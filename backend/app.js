const express = require('express');
const app = express();
const PORT = 3000;

app.use(express.json());

let modelos = [
    { id_modelo: 1, nombre: 'Vintage Wood', material_base: 'Madera' },
    { id_modelo: 2, nombre: 'Modern Slim', material_base: 'Plástico' }
];

let maniquies = [
    { id_maniqui: 1, id_modelo: 1, fecha_ensamblado: '2026-05-01' }
];

let piezas = [
    { id_piece: 1, tipo: 'Cabeza', color: 'Blanco', material: 'Plástico', id_maniqui: 1 },
    { id_piece: 2, tipo: 'Torso', color: 'Blanco', material: 'Plástico', id_maniqui: null }, 
    { id_piece: 3, tipo: 'Brazo', color: 'Negro', material: 'Madera', id_maniqui: null }  
];

app.get('/api/modelos', (req, res) => {
    res.json(modelos);
});

app.post('/api/modelos', (req, res) => {
    const { nombre, material_base } = req.body;
    const nuevoModelo = {
        id_modelo: modelos.length + 1,
        nombre,
        material_base
    };
    modelos.push(nuevoModelo);
    res.status(201).json({ mensaje: 'Modelo creado con éxito', modelo: nuevoModelo });
});

app.get('/api/piezas/disponibles', (req, res) => {
    const piezasSueltas = piezas.filter(p => p.id_maniqui === null);
    res.json(piezasSueltas);
});

app.post('/api/piezas', (req, res) => {
    const { tipo, color, material } = req.body;
    
    const tiposValidos = ['Cabeza', 'Torso', 'Brazo', 'Pierna'];
    if (!tiposValidos.includes(tipo)) {
        return res.status(400).json({ error: 'Tipo de pieza no válido' });
    }

    const nuevaPieza = {
        id_piece: piezas.length + 1,
        tipo,
        color,
        material,
        id_maniqui: null 
    };
    piezas.push(nuevaPieza);
    res.status(201).json({ mensaje: 'Pieza registrada', pieza: nuevaPieza });
});

app.post('/api/maniquies/ensamblar', (req, res) => {
    const { id_modelo, ids_piezas } = req.body; 

    const nuevoManiqui = {
        id_maniqui: maniquies.length + 1,
        id_modelo,
        fecha_ensamblado: new Date().toISOString().split('T')[0]
    };
    
    maniquies.push(nuevoManiqui);

    piezas.forEach(p => {
        if (ids_piezas.includes(p.id_piece)) {
            p.id_maniqui = nuevoManiqui.id_maniqui;
        }
    });

    res.status(201).json({ 
        mensaje: 'Maniquí ensamblado correctamente', 
        maniqui: nuevoManiqui,
        piezas_vinculadas: ids_piezas
    });
});

app.listen(PORT, () => {
    console.log(`Servidor corriendo en http://localhost:${PORT}`);
});
