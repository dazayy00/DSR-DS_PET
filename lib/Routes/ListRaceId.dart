
class Race_Id {
  

  static String getRaceID(String raza) {
    switch (raza) {
      case 'Abisinio':
        return 'be14b67a-7c97-47d8-b74d-337bd552bf79';
      case 'Americano de pelo corto':
        return '3c40a768-96fb-4750-b7f3-1955f45a9349';
      case 'Angora turco':
        return 'd52c2356-385e-4588-a5fe-2b6918ae22a3';
      case 'Azul ruso':
        return 'd1162448-bdad-4ba0-8e22-5c65efe48072';
      case 'Bengala':
        return 'c86e3f9a-b86e-474c-9675-0cd841b874bd';
      case 'Birmano':
        return '19b449ac-e98d-4609-a464-35566fa13b87';
      case 'Bombay':
        return '88be12ba-4638-4d40-a2dd-b55e01116751';
      case 'Britanico de pelo corto':
        return 'be296a0a-1305-4482-91ab-052b492c4f1b';
      case 'Cornish rex':
        return '24a28978-678d-443d-a274-55681f321ba2';
      case 'Devon rex':
        return '9223700c-a2ea-4f8e-ad59-6e5fed1a2bbd';
      case 'Domestico':
        return 'd18f43d7-4d3d-4d73-b8a8-9256500a6d1d';
      case 'Esfinge':
        return 'c87dc72b-66ae-4616-9c35-fceca7b92445';
      case 'Habana':
        return 'c5f433d3-f48b-44d2-ad22-b784e45ee7ee';
      case 'Javanes':
        return 'c379ce4b-d92d-47ec-9d6a-dab1e85fc57c';
      case 'Korat':
        return 'cdf79c4e-7259-4a2d-9a51-6a75893cfb37';
      case 'Maine Coon':
        return '20706797-eb6e-435f-b1a9-888d8c42f823';
      case 'Manx':
        return '5b9e788f-ec22-48ef-aaa4-0b3a8afbd609';
      case 'Mau Egipcio':
        return 'fb916c15-678d-4d55-87c6-d13d7e178924';
      case 'Noruego':
        return '3514c9f0-aff7-4d67-b31c-8ae9070f904f';
      case 'Ocicat':
        return '06f436cb-535c-416c-a303-0e3476d8c41f';
      case 'Oriental':
        return '3730c2a5-96dc-4128-9670-5dfc5c6c2e33';
      case 'Persa':
        return 'c01548ea-d169-4ae7-b3ef-afe6a9674dc3';
      case 'Peterbald':
        return '0fbc1d33-329b-4b0b-8527-2577816843fb';
      case 'Ragdoll':
        return '0518d33c-01d6-411f-9305-03ab8f520e8a';
      case 'Sagrado de Birmania':
        return 'd540b7c9-8024-4056-b21d-51b329456aa0';
      case 'Savannah':
        return '8fb7455e-8ab3-4b24-9a4e-1b79a82e2f27';
      case 'Siames':
        return '0b277dd8-3bc4-464c-93d8-f61e2044c4f9';
      case 'Singapur':
        return '4b0427b5-3566-4d7b-a5a4-e859702e909e';
      case 'Somali':
        return 'a753fa97-f3c2-483f-9592-35368d50d467';
      case 'Sphynx':
        return 'ba2e1cba-b55b-4092-94dd-5fe800cd63a8';
      case 'Tonkies':
        return '66f1cff5-702f-47b2-8691-c4db52e92cba';
      case 'Turco de Van':
        return '4ee32a1b-9b23-4080-a888-e90fd3b42e71';
      case 'York de Chocolate':
        return '09aa346c-c5b3-487b-8316-117818aea581';
      case 'Otros':
        return 'fb4840f6-10ec-4797-b65b-1f0b3ccbdb54';
      
      default:
        throw Exception('Invalid race');
    }
  }
}