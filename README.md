# HomeRental (rental_application)

Aplicativo mobile em **Flutter**  desenvolvido para fins de **estudo e portfólio**, voltado para aluguel de imóveis, com fluxo de **Onboarding**, **Autenticação (simulada)** e duas áreas principais:

-   **Tenant (locatário)**: Home, Favoritos, Reservas, Mensagens e
    Perfil
-   **Landlord (proprietário/anunciante)**: Dashboard, Imóveis,
    Mensagens, Reservas e Perfil
 
   O projeto baseado na video aula do youtube https://www.youtube.com/watch?v=oI7EK223eX0&list=PLcp-kz7yQr4KCd1RJm7cSe92Li_5r57er&index=13 canal DEV LUCK que utiliza **go_router** 
   (rotas + layouts com ShellRoute) e **flutter_screenutil** para responsividade.

  

------------------------------------------------------------------------

## ✅ Funcionalidades

### Fluxo inicial

-   Splash Screen com animação
-   Onboarding com PageView e indicadores
-   Navegação para Auth

### Tenant (locatário)

-   Home (/home)
-   Favoritos (/favorites)
-   Reservas (/bookings)
-   Mensagens (/messages) + detalhe do chat (/messages/chat)
-   Perfil (/profile)

### Landlord (proprietário)

-   Dashboard (/landlord/dashboard)
-   Imóveis (/landlord/properties)
-   Mensagens (/landlord/messages) + detalhe do chat
    (/landlord/messages/chat)
-   Reservas (/landlord/bookings)
-   Perfil (/landlord/profile)

------------------------------------------------------------------------

## 🧱 Stack / Dependências principais

-   Flutter (SDK definido no projeto)
-   go_router
-   flutter_screenutil
-   shared_preferences
-   google_fonts
-   intl
-   cached_network_image
-   carousel_slider
-   shimmer

------------------------------------------------------------------------

## ▶️ Como rodar o projeto

### Pré-requisitos

-   Flutter instalado (`flutter doctor`)
-   Emulador Android/iOS ou dispositivo físico

### Passos

``` bash
flutter pub get
flutter run
```

------------------------------------------------------------------------

## 🗂️ Estrutura de pastas (visão geral)

lib/ main.dart core/ router/ services/ theme/ constants/ common/widgets/
views/ controllers/ models/ assets/ images/

------------------------------------------------------------------------

## 🔐 Autenticação (simulada)

A autenticação atual é fake, implementada no AuthController com
Future.delayed().

Usuários de teste: - Tenant: e@gmail.com - Landlord: h@gmail.com

------------------------------------------------------------------------

## ⚠️ Pontos de atenção / TODO

1)  Ajustar flag de primeira execução (onboarding).
2)  Revisar dependências não utilizadas.

------------------------------------------------------------------------

## 🧪 Testes

``` bash
flutter test
```

------------------------------------------------------------------------

## 📄 Licença

Definir licença (ex.: MIT) caso vá publicar.
