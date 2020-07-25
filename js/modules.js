export class Filter {
    constructor(fields) {
        this.fields = fields;
    }

    render(route, method, renderDestination, error) {
        let data = this.fields[0].id + "=" + this.fields[0].value;
        for (let n = 1; n < this.fields.length; n++) {
            data += "&" + this.fields[n].id + "=" + this.fields[n].value;
        }
        $.ajax({
            type: method,
            url: route,
            data: data,
            success: function(response) {
                renderDestination.innerHTML = response
            },
            error: error,
        })
    }
}

// Tablas de producto y proveedor del programa


export const equivalencies = {
    Centímetros: {
        Centímetros: 1,
        Metros: 100,
        Pulgadas: 2.54,
        Pies: 30.48,
        Yarda: 91.44,
    },
    Metros: {
        Centímetros: 100,
        Metros: 1,
        Pulgadas: 0.0254,
        Pies: 0.3047992424196,
        Yarda: 0.9144,
    },
    Mililitros: {
        Mililitros: 1,
        Litros: 1000,
        Galones: 3785.41,
    },
    Litros: {
        Mililitros: 0.001,
        Litros: 1,
        Galones: 3.78541,
    },
    Kilogramos: {
        Kilogramos: 1,
        Gramos: 0.001,
        Toneladas: 1000,
        Onzas: 0.0283495,
        Libras: 0.453592,
    },
    Gramos: {
        Kilogramos: 1000,
        Gramos: 1,
        Toneladas: 1000000,
        Onzas: 28.3495,
        Libras: 453.592,
    },
    Unidades: {
        Unidades: 1,
        Decenas: 10,
        Docenas: 12,
    },
    Decenas: {
        Unidades: 10,
        Decenas: 1,
        Docenas: 1.2,
    },
    Docenas: {
        Unidades: 12,
        Decenas: 1.2,
        Docenas: 1,
    },

    convert(initialUnit, finalUnit, value) {
        let newValue = value * this[initialUnit][finalUnit];
        if (!newValue) {
            alert(`No se puede convertir de ${initialUnit} a ${finalUnit}`);
            return null;
        } else {
            return newValue;
        };
    },

    renderValues(unit) {
        let keyArray = Object.keys(this[unit]);
        return keyArray;
    }
}