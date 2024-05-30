
class Food_Id {
  

  static String getFoodID(String food) {
    switch (food) {
      case 'Minino Duo':
        return '9dab7df9-0fe0-46a5-a075-2235f63de6d3';
      case 'NUPEC SUPER PREMIUM FELINO ANUPEC':
        return '504d189f-eee3-4dfc-8414-84ce2fe88b75';
      case 'Minino Plus':
        return 'ad0b2883-534f-42ed-99c2-12b6aec66625';
      case 'PURINA Cat Chow':
        return '6238d2e0-1a78-4e79-929e-202313754b3c';
      case 'PURINA ONE':
        return 'e22a5740-3268-46e9-a4b5-bf0223421aba';
      case 'PURINA Gatina':
        return '6fd121a6-3991-468e-9df8-fe727c41e174';
      case 'Whiskas':
        return '7c0b75d5-50d0-4de9-a999-b68e73d0f521';
      case 'PURINA Felix':
        return '40a45a44-4fb2-4bac-a273-b9476481fc5e';
      case 'Hills SCIENCE DIET HAIRBALL CO!':
        return 'bd5d3f21-1b92-4675-8923-6d2ccfb377ce';
      case 'PURINA PRO PLAN STERILIZED':
        return '251198fe-aa55-43eb-b509-c13ee56303d5';
      case 'PURINA PRO PLAN (ADULT 7+)':
        return 'aaed45d4-5ef7-4998-afdc-555c1ef9f40f';
      case 'PURINA PRO PLAN Urinary TRACTO':
        return 'fa374b6b-57cf-42b4-bbd7-270b4424ed18';
      case 'PURINA PRO PLAN SENSITIVE':
        return 'be1578ec-3c2a-4acb-a2e7-79bf18a13cc9';
      case 'ROYAL CANIN Persian':
        return 'f741af51-1800-4ea5-b588-7dce841ec64d';
      case 'Hills SCIENCE DIET LIGHT ADULT':
        return 'a1ab1fdf-fa75-4275-83ff-eac5ebdd8b84';
      case 'Hills SCIENCE DIET KITTEN':
        return '69fc51a5-be23-4041-b650-785340fef2ed';
      case 'PURINA PRO PLAN REDUCED CALO':
        return '45458047-a2d8-49fe-9f02-7020067836fd';
      case 'NUPEC SUPER PREMIUM FELINO KNUPEC':
        return '983d3f11-68f0-4246-8f29-7223a6709100';
      case 'ROYAL CANIN APPETITE CONTROL':
        return '09683aed-2e6a-4374-b678-3b749cce2b3f';
      case 'PURINA PRO PLAN KITTEN':
        return 'b581f62f-d6f5-48c2-8be5-72667d526a09';
      case 'ROYAL CANIN KITTEN':
        return 'c5cde678-9df7-4c2e-8c51-0348f705caa3';
      
      default:
        throw Exception('Invalid race');
    }
  }
}