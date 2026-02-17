// GENERATED CODE - DO NOT EDIT

// Copyright 2013 The Flutter Authors
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// ignore_for_file: specify_nonobvious_property_types, specify_nonobvious_local_variable_types

import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import 'custom_text_style.dart';
import 'google_fonts_base.dart';
import 'google_fonts_parts/part_a.dart';
import 'google_fonts_parts/part_b.dart';
import 'google_fonts_parts/part_c.dart';
import 'google_fonts_parts/part_d.dart';
import 'google_fonts_parts/part_e.dart';
import 'google_fonts_parts/part_f.dart';
import 'google_fonts_parts/part_g.dart';
import 'google_fonts_parts/part_h.dart';
import 'google_fonts_parts/part_i.dart';
import 'google_fonts_parts/part_j.dart';
import 'google_fonts_parts/part_k.dart';
import 'google_fonts_parts/part_l.dart';
import 'google_fonts_parts/part_m.dart';
import 'google_fonts_parts/part_n.dart';
import 'google_fonts_parts/part_o.dart';
import 'google_fonts_parts/part_p.dart';
import 'google_fonts_parts/part_q.dart';
import 'google_fonts_parts/part_r.dart';
import 'google_fonts_parts/part_s.dart';
import 'google_fonts_parts/part_t.dart';
import 'google_fonts_parts/part_u.dart';
import 'google_fonts_parts/part_v.dart';
import 'google_fonts_parts/part_w.dart';
import 'google_fonts_parts/part_x.dart';
import 'google_fonts_parts/part_y.dart';
import 'google_fonts_parts/part_z.dart';

/// A collection of properties used to specify custom behavior of the
/// GoogleFonts library.
class Config {
  /// Whether or not the GoogleFonts library can make requests to
  /// [fonts.google.com](https://fonts.google.com/) to retrieve font files.
  bool allowRuntimeFetching = true;
}

/// Provides configuration, and static methods to obtain [TextStyle]s and [TextTheme]s.
///
/// {@youtube 560 315 https://www.youtube.com/watch?v=8Vzv2CdbEY0}
///
/// Obtain a map of available fonts with [asMap]. Retrieve a font by family name
/// with [getFont]. Retrieve a text theme by its font family name [getTextTheme].
///
/// Check out the [README](https://pub.dev/packages/google_fonts) for more info.
class GoogleFonts {
  /// Configuration for the [GoogleFonts] library.
  ///
  /// Use this to define custom behavior of the GoogleFonts library in your app.
  /// For example, if you do not want the GoogleFonts library to make any HTTP
  /// requests for fonts, add the following snippet to your app's `main` method.
  ///
  /// ```dart
  /// GoogleFonts.config.allowRuntimeFetching = false;
  /// ```
  static final Config config = Config();

  /// Returns a [Future] which resolves when requested fonts have finished
  /// loading and are ready to be rendered on screen.
  ///
  /// Usage:
  /// ```dart
  /// GoogleFonts.lato();
  /// GoogleFonts.pacificoTextTheme();
  /// await GoogleFonts.pendingFonts(); // <-- waits until Lato and Pacifico files have loaded.
  /// ```
  ///
  /// To keep things tidy, on can also pass in requested fonts as a list
  /// to [pendingFonts].
  ///
  /// ```dart
  /// await GoogleFonts.pendingFonts([
  ///   GoogleFonts.lato(),
  ///   GoogleFonts.pacificoTextTheme()
  /// ]);
  /// ```
  ///
  /// To avoid visual font swaps that occur when a font is loading,
  /// consider using [FutureBuilder]. Note: This future cannot be created in
  /// [build], as described in [FutureBuilder]'s documentation.
  ///
  /// ```dart
  /// late Future googleFontsPending;
  ///
  /// @override
  /// void initState() {
  ///   super.initState();
  ///   googleFontsPending = GoogleFonts.pendingFonts([
  ///     ...
  ///   ]);
  /// }
  ///
  /// @override
  /// Widget build(BuildContext context) {
  ///   return FutureBuilder(
  ///     future: googleFontsPending,
  ///     builder: (context, snapshot) {
  ///       if (snapshot.connectionState != ConnectionState.done) {
  ///         return const SizedBox();
  ///       }
  ///       ...
  ///     }
  ///   );
  /// }
  /// ```
  static Future<List<void>> pendingFonts([List<dynamic>? _]) => Future.wait(pendingFontFutures);

  /// Get a map of all available fonts.
  ///
  /// Returns a map where the key is the name of the font family and the value
  /// is the corresponding [GoogleFonts] method.
  static Map<
      String,
      CustomTextStyle Function({
        CustomTextStyle? textStyle,
        Color? color,
        Color? backgroundColor,
        double? fontSize,
        FontWeight? fontWeight,
        FontStyle? fontStyle,
        double? letterSpacing,
        double? wordSpacing,
        TextBaseline? textBaseline,
        double? height,
        Locale? locale,
        Paint? foreground,
        Paint? background,
        List<ui.Shadow>? shadows,
        List<ui.FontFeature>? fontFeatures,
        TextDecoration? decoration,
        Color? decorationColor,
        TextDecorationStyle? decorationStyle,
        double? decorationThickness,
      })> asMap() => const {
        'ABeeZee': PartA.aBeeZee,
        'ADLaM Display': PartA.aDLaMDisplay,
        'AR One Sans': PartA.arOneSans,
        'Abel': PartA.abel,
        'Abhaya Libre': PartA.abhayaLibre,
        'Aboreto': PartA.aboreto,
        'Abril Fatface': PartA.abrilFatface,
        'Abyssinica SIL': PartA.abyssinicaSil,
        'Aclonica': PartA.aclonica,
        'Acme': PartA.acme,
        'Actor': PartA.actor,
        'Adamina': PartA.adamina,
        'Advent Pro': PartA.adventPro,
        'Afacad': PartA.afacad,
        'Agbalumo': PartA.agbalumo,
        'Agdasima': PartA.agdasima,
        'Aguafina Script': PartA.aguafinaScript,
        'Akatab': PartA.akatab,
        'Akaya Kanadaka': PartA.akayaKanadaka,
        'Akaya Telivigala': PartA.akayaTelivigala,
        'Akronim': PartA.akronim,
        'Akshar': PartA.akshar,
        'Aladin': PartA.aladin,
        'Alata': PartA.alata,
        'Alatsi': PartA.alatsi,
        'Albert Sans': PartA.albertSans,
        'Aldrich': PartA.aldrich,
        'Alef': PartA.alef,
        'Alegreya': PartA.alegreya,
        'Alegreya SC': PartA.alegreyaSc,
        'Alegreya Sans': PartA.alegreyaSans,
        'Alegreya Sans SC': PartA.alegreyaSansSc,
        'Aleo': PartA.aleo,
        'Alex Brush': PartA.alexBrush,
        'Alexandria': PartA.alexandria,
        'Alfa Slab One': PartA.alfaSlabOne,
        'Alice': PartA.alice,
        'Alike': PartA.alike,
        'Alike Angular': PartA.alikeAngular,
        'Alkalami': PartA.alkalami,
        'Alkatra': PartA.alkatra,
        'Allan': PartA.allan,
        'Allerta': PartA.allerta,
        'Allerta Stencil': PartA.allertaStencil,
        'Allison': PartA.allison,
        'Allura': PartA.allura,
        'Almarai': PartA.almarai,
        'Almendra': PartA.almendra,
        'Almendra Display': PartA.almendraDisplay,
        'Almendra SC': PartA.almendraSc,
        'Alumni Sans': PartA.alumniSans,
        'Alumni Sans Collegiate One': PartA.alumniSansCollegiateOne,
        'Alumni Sans Inline One': PartA.alumniSansInlineOne,
        'Alumni Sans Pinstripe': PartA.alumniSansPinstripe,
        'Amarante': PartA.amarante,
        'Amaranth': PartA.amaranth,
        'Amatic SC': PartA.amaticSc,
        'Amethysta': PartA.amethysta,
        'Amiko': PartA.amiko,
        'Amiri': PartA.amiri,
        'Amiri Quran': PartA.amiriQuran,
        'Amita': PartA.amita,
        'Anaheim': PartA.anaheim,
        'Andada Pro': PartA.andadaPro,
        'Andika': PartA.andika,
        'Anek Bangla': PartA.anekBangla,
        'Anek Devanagari': PartA.anekDevanagari,
        'Anek Gujarati': PartA.anekGujarati,
        'Anek Gurmukhi': PartA.anekGurmukhi,
        'Anek Kannada': PartA.anekKannada,
        'Anek Latin': PartA.anekLatin,
        'Anek Malayalam': PartA.anekMalayalam,
        'Anek Odia': PartA.anekOdia,
        'Anek Tamil': PartA.anekTamil,
        'Anek Telugu': PartA.anekTelugu,
        'Angkor': PartA.angkor,
        'Annapurna SIL': PartA.annapurnaSil,
        'Annie Use Your Telescope': PartA.annieUseYourTelescope,
        'Anonymous Pro': PartA.anonymousPro,
        'Anta': PartA.anta,
        'Antic': PartA.antic,
        'Antic Didone': PartA.anticDidone,
        'Antic Slab': PartA.anticSlab,
        'Anton': PartA.anton,
        'Anton SC': PartA.antonSc,
        'Antonio': PartA.antonio,
        'Anuphan': PartA.anuphan,
        'Anybody': PartA.anybody,
        'Aoboshi One': PartA.aoboshiOne,
        'Arapey': PartA.arapey,
        'Arbutus': PartA.arbutus,
        'Arbutus Slab': PartA.arbutusSlab,
        'Architects Daughter': PartA.architectsDaughter,
        'Archivo': PartA.archivo,
        'Archivo Black': PartA.archivoBlack,
        'Archivo Narrow': PartA.archivoNarrow,
        'Are You Serious': PartA.areYouSerious,
        'Aref Ruqaa': PartA.arefRuqaa,
        'Aref Ruqaa Ink': PartA.arefRuqaaInk,
        'Arima': PartA.arima,
        'Arimo': PartA.arimo,
        'Arizonia': PartA.arizonia,
        'Armata': PartA.armata,
        'Arsenal': PartA.arsenal,
        'Arsenal SC': PartA.arsenalSc,
        'Artifika': PartA.artifika,
        'Arvo': PartA.arvo,
        'Arya': PartA.arya,
        'Asap': PartA.asap,
        'Asap Condensed': PartA.asapCondensed,
        'Asar': PartA.asar,
        'Asset': PartA.asset,
        'Assistant': PartA.assistant,
        'Astloch': PartA.astloch,
        'Asul': PartA.asul,
        'Athiti': PartA.athiti,
        'Atkinson Hyperlegible': PartA.atkinsonHyperlegible,
        'Atma': PartA.atma,
        'Atomic Age': PartA.atomicAge,
        'Aubrey': PartA.aubrey,
        'Audiowide': PartA.audiowide,
        'Autour One': PartA.autourOne,
        'Average': PartA.average,
        'Average Sans': PartA.averageSans,
        'Averia Gruesa Libre': PartA.averiaGruesaLibre,
        'Averia Libre': PartA.averiaLibre,
        'Averia Sans Libre': PartA.averiaSansLibre,
        'Averia Serif Libre': PartA.averiaSerifLibre,
        'Azeret Mono': PartA.azeretMono,
        'B612': PartB.b612,
        'B612 Mono': PartB.b612Mono,
        'BIZ UDGothic': PartB.bizUDGothic,
        'BIZ UDMincho': PartB.bizUDMincho,
        'BIZ UDPGothic': PartB.bizUDPGothic,
        'BIZ UDPMincho': PartB.bizUDPMincho,
        'Babylonica': PartB.babylonica,
        'Bacasime Antique': PartB.bacasimeAntique,
        'Bad Script': PartB.badScript,
        'Bagel Fat One': PartB.bagelFatOne,
        'Bahiana': PartB.bahiana,
        'Bahianita': PartB.bahianita,
        'Bai Jamjuree': PartB.baiJamjuree,
        'Bakbak One': PartB.bakbakOne,
        'Ballet': PartB.ballet,
        'Baloo 2': PartB.baloo2,
        'Baloo Bhai 2': PartB.balooBhai2,
        'Baloo Bhaijaan 2': PartB.balooBhaijaan2,
        'Baloo Bhaina 2': PartB.balooBhaina2,
        'Baloo Chettan 2': PartB.balooChettan2,
        'Baloo Da 2': PartB.balooDa2,
        'Baloo Paaji 2': PartB.balooPaaji2,
        'Baloo Tamma 2': PartB.balooTamma2,
        'Baloo Tammudu 2': PartB.balooTammudu2,
        'Baloo Thambi 2': PartB.balooThambi2,
        'Balsamiq Sans': PartB.balsamiqSans,
        'Balthazar': PartB.balthazar,
        'Bangers': PartB.bangers,
        'Barlow': PartB.barlow,
        'Barlow Condensed': PartB.barlowCondensed,
        'Barlow Semi Condensed': PartB.barlowSemiCondensed,
        'Barriecito': PartB.barriecito,
        'Barrio': PartB.barrio,
        'Basic': PartB.basic,
        'Baskervville': PartB.baskervville,
        'Baskervville SC': PartB.baskervvilleSc,
        'Battambang': PartB.battambang,
        'Baumans': PartB.baumans,
        'Bayon': PartB.bayon,
        'Be Vietnam Pro': PartB.beVietnamPro,
        'Beau Rivage': PartB.beauRivage,
        'Bebas Neue': PartB.bebasNeue,
        'Beiruti': PartB.beiruti,
        'Belanosima': PartB.belanosima,
        'Belgrano': PartB.belgrano,
        'Bellefair': PartB.bellefair,
        'Belleza': PartB.belleza,
        'Bellota': PartB.bellota,
        'Bellota Text': PartB.bellotaText,
        'BenchNine': PartB.benchNine,
        'Benne': PartB.benne,
        'Bentham': PartB.bentham,
        'Berkshire Swash': PartB.berkshireSwash,
        'Besley': PartB.besley,
        'Beth Ellen': PartB.bethEllen,
        'Bevan': PartB.bevan,
        'BhuTuka Expanded One': PartB.bhuTukaExpandedOne,
        'Big Shoulders Display': PartB.bigShouldersDisplay,
        'Big Shoulders Inline Display': PartB.bigShouldersInlineDisplay,
        'Big Shoulders Inline Text': PartB.bigShouldersInlineText,
        'Big Shoulders Stencil Display': PartB.bigShouldersStencilDisplay,
        'Big Shoulders Stencil Text': PartB.bigShouldersStencilText,
        'Big Shoulders Text': PartB.bigShouldersText,
        'Bigelow Rules': PartB.bigelowRules,
        'Bigshot One': PartB.bigshotOne,
        'Bilbo': PartB.bilbo,
        'Bilbo Swash Caps': PartB.bilboSwashCaps,
        'BioRhyme': PartB.bioRhyme,
        'BioRhyme Expanded': PartB.bioRhymeExpanded,
        'Birthstone': PartB.birthstone,
        'Birthstone Bounce': PartB.birthstoneBounce,
        'Biryani': PartB.biryani,
        'Bitter': PartB.bitter,
        'Black And White Picture': PartB.blackAndWhitePicture,
        'Black Han Sans': PartB.blackHanSans,
        'Black Ops One': PartB.blackOpsOne,
        'Blaka': PartB.blaka,
        'Blaka Hollow': PartB.blakaHollow,
        'Blaka Ink': PartB.blakaInk,
        'Blinker': PartB.blinker,
        'Bodoni Moda': PartB.bodoniModa,
        'Bodoni Moda SC': PartB.bodoniModaSc,
        'Bokor': PartB.bokor,
        'Bona Nova': PartB.bonaNova,
        'Bona Nova SC': PartB.bonaNovaSc,
        'Bonbon': PartB.bonbon,
        'Bonheur Royale': PartB.bonheurRoyale,
        'Boogaloo': PartB.boogaloo,
        'Borel': PartB.borel,
        'Bowlby One': PartB.bowlbyOne,
        'Bowlby One SC': PartB.bowlbyOneSc,
        'Braah One': PartB.braahOne,
        'Brawler': PartB.brawler,
        'Bree Serif': PartB.breeSerif,
        'Bricolage Grotesque': PartB.bricolageGrotesque,
        'Bruno Ace': PartB.brunoAce,
        'Bruno Ace SC': PartB.brunoAceSc,
        'Brygada 1918': PartB.brygada1918,
        'Bubblegum Sans': PartB.bubblegumSans,
        'Bubbler One': PartB.bubblerOne,
        'Buda': PartB.buda,
        'Buenard': PartB.buenard,
        'Bungee': PartB.bungee,
        'Bungee Hairline': PartB.bungeeHairline,
        'Bungee Inline': PartB.bungeeInline,
        'Bungee Outline': PartB.bungeeOutline,
        'Bungee Shade': PartB.bungeeShade,
        'Bungee Spice': PartB.bungeeSpice,
        'Butcherman': PartB.butcherman,
        'Butterfly Kids': PartB.butterflyKids,
        'Cabin': PartC.cabin,
        'Cabin Condensed': PartC.cabinCondensed,
        'Cabin Sketch': PartC.cabinSketch,
        'Cactus Classical Serif': PartC.cactusClassicalSerif,
        'Caesar Dressing': PartC.caesarDressing,
        'Cagliostro': PartC.cagliostro,
        'Cairo': PartC.cairo,
        'Cairo Play': PartC.cairoPlay,
        'Caladea': PartC.caladea,
        'Calistoga': PartC.calistoga,
        'Calligraffitti': PartC.calligraffitti,
        'Cambay': PartC.cambay,
        'Cambo': PartC.cambo,
        'Candal': PartC.candal,
        'Cantarell': PartC.cantarell,
        'Cantata One': PartC.cantataOne,
        'Cantora One': PartC.cantoraOne,
        'Caprasimo': PartC.caprasimo,
        'Capriola': PartC.capriola,
        'Caramel': PartC.caramel,
        'Carattere': PartC.carattere,
        'Cardo': PartC.cardo,
        'Carlito': PartC.carlito,
        'Carme': PartC.carme,
        'Carrois Gothic': PartC.carroisGothic,
        'Carrois Gothic SC': PartC.carroisGothicSc,
        'Carter One': PartC.carterOne,
        'Castoro': PartC.castoro,
        'Castoro Titling': PartC.castoroTitling,
        'Catamaran': PartC.catamaran,
        'Caudex': PartC.caudex,
        'Caveat': PartC.caveat,
        'Caveat Brush': PartC.caveatBrush,
        'Cedarville Cursive': PartC.cedarvilleCursive,
        'Ceviche One': PartC.cevicheOne,
        'Chakra Petch': PartC.chakraPetch,
        'Changa': PartC.changa,
        'Changa One': PartC.changaOne,
        'Chango': PartC.chango,
        'Charis SIL': PartC.charisSil,
        'Charm': PartC.charm,
        'Charmonman': PartC.charmonman,
        'Chathura': PartC.chathura,
        'Chau Philomene One': PartC.chauPhilomeneOne,
        'Chela One': PartC.chelaOne,
        'Chelsea Market': PartC.chelseaMarket,
        'Chenla': PartC.chenla,
        'Cherish': PartC.cherish,
        'Cherry Bomb One': PartC.cherryBombOne,
        'Cherry Cream Soda': PartC.cherryCreamSoda,
        'Cherry Swash': PartC.cherrySwash,
        'Chewy': PartC.chewy,
        'Chicle': PartC.chicle,
        'Chilanka': PartC.chilanka,
        'Chivo': PartC.chivo,
        'Chivo Mono': PartC.chivoMono,
        'Chocolate Classical Sans': PartC.chocolateClassicalSans,
        'Chokokutai': PartC.chokokutai,
        'Chonburi': PartC.chonburi,
        'Cinzel': PartC.cinzel,
        'Cinzel Decorative': PartC.cinzelDecorative,
        'Clicker Script': PartC.clickerScript,
        'Climate Crisis': PartC.climateCrisis,
        'Coda': PartC.coda,
        'Codystar': PartC.codystar,
        'Coiny': PartC.coiny,
        'Combo': PartC.combo,
        'Comfortaa': PartC.comfortaa,
        'Comforter': PartC.comforter,
        'Comforter Brush': PartC.comforterBrush,
        'Comic Neue': PartC.comicNeue,
        'Coming Soon': PartC.comingSoon,
        'Comme': PartC.comme,
        'Commissioner': PartC.commissioner,
        'Concert One': PartC.concertOne,
        'Condiment': PartC.condiment,
        'Content': PartC.content,
        'Contrail One': PartC.contrailOne,
        'Convergence': PartC.convergence,
        'Cookie': PartC.cookie,
        'Copse': PartC.copse,
        'Corben': PartC.corben,
        'Corinthia': PartC.corinthia,
        'Cormorant': PartC.cormorant,
        'Cormorant Garamond': PartC.cormorantGaramond,
        'Cormorant Infant': PartC.cormorantInfant,
        'Cormorant SC': PartC.cormorantSc,
        'Cormorant Unicase': PartC.cormorantUnicase,
        'Cormorant Upright': PartC.cormorantUpright,
        'Courgette': PartC.courgette,
        'Courier Prime': PartC.courierPrime,
        'Cousine': PartC.cousine,
        'Coustard': PartC.coustard,
        'Covered By Your Grace': PartC.coveredByYourGrace,
        'Crafty Girls': PartC.craftyGirls,
        'Creepster': PartC.creepster,
        'Crete Round': PartC.creteRound,
        'Crimson Pro': PartC.crimsonPro,
        'Crimson Text': PartC.crimsonText,
        'Croissant One': PartC.croissantOne,
        'Crushed': PartC.crushed,
        'Cuprum': PartC.cuprum,
        'Cute Font': PartC.cuteFont,
        'Cutive': PartC.cutive,
        'Cutive Mono': PartC.cutiveMono,
        'DM Mono': PartD.dmMono,
        'DM Sans': PartD.dmSans,
        'DM Serif Display': PartD.dmSerifDisplay,
        'DM Serif Text': PartD.dmSerifText,
        'Dai Banna SIL': PartD.daiBannaSil,
        'Damion': PartD.damion,
        'Dancing Script': PartD.dancingScript,
        'Danfo': PartD.danfo,
        'Dangrek': PartD.dangrek,
        'Darker Grotesque': PartD.darkerGrotesque,
        'Darumadrop One': PartD.darumadropOne,
        'David Libre': PartD.davidLibre,
        'Dawning of a New Day': PartD.dawningOfANewDay,
        'Days One': PartD.daysOne,
        'Dekko': PartD.dekko,
        'Dela Gothic One': PartD.delaGothicOne,
        'Delicious Handrawn': PartD.deliciousHandrawn,
        'Delius': PartD.delius,
        'Delius Swash Caps': PartD.deliusSwashCaps,
        'Delius Unicase': PartD.deliusUnicase,
        'Della Respira': PartD.dellaRespira,
        'Denk One': PartD.denkOne,
        'Devonshire': PartD.devonshire,
        'Dhurjati': PartD.dhurjati,
        'Didact Gothic': PartD.didactGothic,
        'Diphylleia': PartD.diphylleia,
        'Diplomata': PartD.diplomata,
        'Diplomata SC': PartD.diplomataSc,
        'Do Hyeon': PartD.doHyeon,
        'Dokdo': PartD.dokdo,
        'Domine': PartD.domine,
        'Donegal One': PartD.donegalOne,
        'Dongle': PartD.dongle,
        'Doppio One': PartD.doppioOne,
        'Dorsa': PartD.dorsa,
        'Dosis': PartD.dosis,
        'DotGothic16': PartD.dotGothic16,
        'Dr Sugiyama': PartD.drSugiyama,
        'Duru Sans': PartD.duruSans,
        'DynaPuff': PartD.dynaPuff,
        'Dynalight': PartD.dynalight,
        'EB Garamond': PartE.ebGaramond,
        'Eagle Lake': PartE.eagleLake,
        'East Sea Dokdo': PartE.eastSeaDokdo,
        'Eater': PartE.eater,
        'Economica': PartE.economica,
        'Eczar': PartE.eczar,
        'Edu AU VIC WA NT Hand': PartE.eduAuVicWaNtHand,
        'Edu NSW ACT Foundation': PartE.eduNswActFoundation,
        'Edu QLD Beginner': PartE.eduQldBeginner,
        'Edu SA Beginner': PartE.eduSaBeginner,
        'Edu TAS Beginner': PartE.eduTasBeginner,
        'Edu VIC WA NT Beginner': PartE.eduVicWaNtBeginner,
        'El Messiri': PartE.elMessiri,
        'Electrolize': PartE.electrolize,
        'Elsie': PartE.elsie,
        'Elsie Swash Caps': PartE.elsieSwashCaps,
        'Emblema One': PartE.emblemaOne,
        'Emilys Candy': PartE.emilysCandy,
        'Encode Sans': PartE.encodeSans,
        'Encode Sans Condensed': PartE.encodeSansCondensed,
        'Encode Sans Expanded': PartE.encodeSansExpanded,
        'Encode Sans SC': PartE.encodeSansSc,
        'Encode Sans Semi Condensed': PartE.encodeSansSemiCondensed,
        'Encode Sans Semi Expanded': PartE.encodeSansSemiExpanded,
        'Engagement': PartE.engagement,
        'Englebert': PartE.englebert,
        'Enriqueta': PartE.enriqueta,
        'Ephesis': PartE.ephesis,
        'Epilogue': PartE.epilogue,
        'Erica One': PartE.ericaOne,
        'Esteban': PartE.esteban,
        'Estonia': PartE.estonia,
        'Euphoria Script': PartE.euphoriaScript,
        'Ewert': PartE.ewert,
        'Exo': PartE.exo,
        'Exo 2': PartE.exo2,
        'Expletus Sans': PartE.expletusSans,
        'Explora': PartE.explora,
        'Fahkwang': PartF.fahkwang,
        'Familjen Grotesk': PartF.familjenGrotesk,
        'Fanwood Text': PartF.fanwoodText,
        'Farro': PartF.farro,
        'Farsan': PartF.farsan,
        'Fascinate': PartF.fascinate,
        'Fascinate Inline': PartF.fascinateInline,
        'Faster One': PartF.fasterOne,
        'Fasthand': PartF.fasthand,
        'Fauna One': PartF.faunaOne,
        'Faustina': PartF.faustina,
        'Federant': PartF.federant,
        'Federo': PartF.federo,
        'Felipa': PartF.felipa,
        'Fenix': PartF.fenix,
        'Festive': PartF.festive,
        'Figtree': PartF.figtree,
        'Finger Paint': PartF.fingerPaint,
        'Finlandica': PartF.finlandica,
        'Fira Code': PartF.firaCode,
        'Fira Mono': PartF.firaMono,
        'Fira Sans': PartF.firaSans,
        'Fira Sans Condensed': PartF.firaSansCondensed,
        'Fira Sans Extra Condensed': PartF.firaSansExtraCondensed,
        'Fjalla One': PartF.fjallaOne,
        'Fjord One': PartF.fjordOne,
        'Flamenco': PartF.flamenco,
        'Flavors': PartF.flavors,
        'Fleur De Leah': PartF.fleurDeLeah,
        'Flow Block': PartF.flowBlock,
        'Flow Circular': PartF.flowCircular,
        'Flow Rounded': PartF.flowRounded,
        'Foldit': PartF.foldit,
        'Fondamento': PartF.fondamento,
        'Fontdiner Swanky': PartF.fontdinerSwanky,
        'Forum': PartF.forum,
        'Fragment Mono': PartF.fragmentMono,
        'Francois One': PartF.francoisOne,
        'Frank Ruhl Libre': PartF.frankRuhlLibre,
        'Fraunces': PartF.fraunces,
        'Freckle Face': PartF.freckleFace,
        'Fredericka the Great': PartF.frederickaTheGreat,
        'Fredoka': PartF.fredoka,
        'Freehand': PartF.freehand,
        'Freeman': PartF.freeman,
        'Fresca': PartF.fresca,
        'Frijole': PartF.frijole,
        'Fruktur': PartF.fruktur,
        'Fugaz One': PartF.fugazOne,
        'Fuggles': PartF.fuggles,
        'Fustat': PartF.fustat,
        'Fuzzy Bubbles': PartF.fuzzyBubbles,
        'GFS Didot': PartG.gfsDidot,
        'GFS Neohellenic': PartG.gfsNeohellenic,
        'Ga Maamli': PartG.gaMaamli,
        'Gabarito': PartG.gabarito,
        'Gabriela': PartG.gabriela,
        'Gaegu': PartG.gaegu,
        'Gafata': PartG.gafata,
        'Gajraj One': PartG.gajrajOne,
        'Galada': PartG.galada,
        'Galdeano': PartG.galdeano,
        'Galindo': PartG.galindo,
        'Gamja Flower': PartG.gamjaFlower,
        'Gantari': PartG.gantari,
        'Gasoek One': PartG.gasoekOne,
        'Gayathri': PartG.gayathri,
        'Gelasio': PartG.gelasio,
        'Gemunu Libre': PartG.gemunuLibre,
        'Genos': PartG.genos,
        'Gentium Book Plus': PartG.gentiumBookPlus,
        'Gentium Plus': PartG.gentiumPlus,
        'Geo': PartG.geo,
        'Geologica': PartG.geologica,
        'Georama': PartG.georama,
        'Geostar': PartG.geostar,
        'Geostar Fill': PartG.geostarFill,
        'Germania One': PartG.germaniaOne,
        'Gideon Roman': PartG.gideonRoman,
        'Gidugu': PartG.gidugu,
        'Gilda Display': PartG.gildaDisplay,
        'Girassol': PartG.girassol,
        'Give You Glory': PartG.giveYouGlory,
        'Glass Antiqua': PartG.glassAntiqua,
        'Glegoo': PartG.glegoo,
        'Gloock': PartG.gloock,
        'Gloria Hallelujah': PartG.gloriaHallelujah,
        'Glory': PartG.glory,
        'Gluten': PartG.gluten,
        'Goblin One': PartG.goblinOne,
        'Gochi Hand': PartG.gochiHand,
        'Goldman': PartG.goldman,
        'Golos Text': PartG.golosText,
        'Gorditas': PartG.gorditas,
        'Gothic A1': PartG.gothicA1,
        'Gotu': PartG.gotu,
        'Goudy Bookletter 1911': PartG.goudyBookletter1911,
        'Gowun Batang': PartG.gowunBatang,
        'Gowun Dodum': PartG.gowunDodum,
        'Graduate': PartG.graduate,
        'Grand Hotel': PartG.grandHotel,
        'Grandiflora One': PartG.grandifloraOne,
        'Grandstander': PartG.grandstander,
        'Grape Nuts': PartG.grapeNuts,
        'Gravitas One': PartG.gravitasOne,
        'Great Vibes': PartG.greatVibes,
        'Grechen Fuemen': PartG.grechenFuemen,
        'Grenze': PartG.grenze,
        'Grenze Gotisch': PartG.grenzeGotisch,
        'Grey Qo': PartG.greyQo,
        'Griffy': PartG.griffy,
        'Gruppo': PartG.gruppo,
        'Gudea': PartG.gudea,
        'Gugi': PartG.gugi,
        'Gulzar': PartG.gulzar,
        'Gupter': PartG.gupter,
        'Gurajada': PartG.gurajada,
        'Gwendolyn': PartG.gwendolyn,
        'Habibi': PartH.habibi,
        'Hachi Maru Pop': PartH.hachiMaruPop,
        'Hahmlet': PartH.hahmlet,
        'Halant': PartH.halant,
        'Hammersmith One': PartH.hammersmithOne,
        'Hanalei': PartH.hanalei,
        'Hanalei Fill': PartH.hanaleiFill,
        'Handjet': PartH.handjet,
        'Handlee': PartH.handlee,
        'Hanken Grotesk': PartH.hankenGrotesk,
        'Hanuman': PartH.hanuman,
        'Happy Monkey': PartH.happyMonkey,
        'Harmattan': PartH.harmattan,
        'Headland One': PartH.headlandOne,
        'Hedvig Letters Sans': PartH.hedvigLettersSans,
        'Hedvig Letters Serif': PartH.hedvigLettersSerif,
        'Heebo': PartH.heebo,
        'Henny Penny': PartH.hennyPenny,
        'Hepta Slab': PartH.heptaSlab,
        'Herr Von Muellerhoff': PartH.herrVonMuellerhoff,
        'Hi Melody': PartH.hiMelody,
        'Hina Mincho': PartH.hinaMincho,
        'Hind': PartH.hind,
        'Hind Guntur': PartH.hindGuntur,
        'Hind Madurai': PartH.hindMadurai,
        'Hind Siliguri': PartH.hindSiliguri,
        'Hind Vadodara': PartH.hindVadodara,
        'Holtwood One SC': PartH.holtwoodOneSc,
        'Homemade Apple': PartH.homemadeApple,
        'Homenaje': PartH.homenaje,
        'Honk': PartH.honk,
        'Hubballi': PartH.hubballi,
        'Hurricane': PartH.hurricane,
        'IBM Plex Mono': PartI.ibmPlexMono,
        'IBM Plex Sans': PartI.ibmPlexSans,
        'IBM Plex Sans Arabic': PartI.ibmPlexSansArabic,
        'IBM Plex Sans Condensed': PartI.ibmPlexSansCondensed,
        'IBM Plex Sans Devanagari': PartI.ibmPlexSansDevanagari,
        'IBM Plex Sans Hebrew': PartI.ibmPlexSansHebrew,
        'IBM Plex Sans JP': PartI.ibmPlexSansJp,
        'IBM Plex Sans KR': PartI.ibmPlexSansKr,
        'IBM Plex Sans Thai': PartI.ibmPlexSansThai,
        'IBM Plex Sans Thai Looped': PartI.ibmPlexSansThaiLooped,
        'IBM Plex Serif': PartI.ibmPlexSerif,
        'IM Fell DW Pica': PartI.imFellDwPica,
        'IM Fell DW Pica SC': PartI.imFellDwPicaSc,
        'IM Fell Double Pica': PartI.imFellDoublePica,
        'IM Fell Double Pica SC': PartI.imFellDoublePicaSc,
        'IM Fell English': PartI.imFellEnglish,
        'IM Fell English SC': PartI.imFellEnglishSc,
        'IM Fell French Canon': PartI.imFellFrenchCanon,
        'IM Fell French Canon SC': PartI.imFellFrenchCanonSc,
        'IM Fell Great Primer': PartI.imFellGreatPrimer,
        'IM Fell Great Primer SC': PartI.imFellGreatPrimerSc,
        'Ibarra Real Nova': PartI.ibarraRealNova,
        'Iceberg': PartI.iceberg,
        'Iceland': PartI.iceland,
        'Imbue': PartI.imbue,
        'Imperial Script': PartI.imperialScript,
        'Imprima': PartI.imprima,
        'Inclusive Sans': PartI.inclusiveSans,
        'Inconsolata': PartI.inconsolata,
        'Inder': PartI.inder,
        'Indie Flower': PartI.indieFlower,
        'Ingrid Darling': PartI.ingridDarling,
        'Inika': PartI.inika,
        'Inknut Antiqua': PartI.inknutAntiqua,
        'Inria Sans': PartI.inriaSans,
        'Inria Serif': PartI.inriaSerif,
        'Inspiration': PartI.inspiration,
        'Instrument Sans': PartI.instrumentSans,
        'Instrument Serif': PartI.instrumentSerif,
        'Inter': PartI.inter,
        'Inter Tight': PartI.interTight,
        'Irish Grover': PartI.irishGrover,
        'Island Moments': PartI.islandMoments,
        'Istok Web': PartI.istokWeb,
        'Italiana': PartI.italiana,
        'Italianno': PartI.italianno,
        'Itim': PartI.itim,
        'Jacquard 12': PartJ.jacquard12,
        'Jacquard 12 Charted': PartJ.jacquard12Charted,
        'Jacquard 24': PartJ.jacquard24,
        'Jacquard 24 Charted': PartJ.jacquard24Charted,
        'Jacquarda Bastarda 9': PartJ.jacquardaBastarda9,
        'Jacquarda Bastarda 9 Charted': PartJ.jacquardaBastarda9Charted,
        'Jacques Francois': PartJ.jacquesFrancois,
        'Jacques Francois Shadow': PartJ.jacquesFrancoisShadow,
        'Jaini': PartJ.jaini,
        'Jaini Purva': PartJ.jainiPurva,
        'Jaldi': PartJ.jaldi,
        'Jaro': PartJ.jaro,
        'Jersey 10': PartJ.jersey10,
        'Jersey 10 Charted': PartJ.jersey10Charted,
        'Jersey 15': PartJ.jersey15,
        'Jersey 15 Charted': PartJ.jersey15Charted,
        'Jersey 20': PartJ.jersey20,
        'Jersey 20 Charted': PartJ.jersey20Charted,
        'Jersey 25': PartJ.jersey25,
        'Jersey 25 Charted': PartJ.jersey25Charted,
        'JetBrains Mono': PartJ.jetBrainsMono,
        'Jim Nightshade': PartJ.jimNightshade,
        'Joan': PartJ.joan,
        'Jockey One': PartJ.jockeyOne,
        'Jolly Lodger': PartJ.jollyLodger,
        'Jomhuria': PartJ.jomhuria,
        'Jomolhari': PartJ.jomolhari,
        'Josefin Sans': PartJ.josefinSans,
        'Josefin Slab': PartJ.josefinSlab,
        'Jost': PartJ.jost,
        'Joti One': PartJ.jotiOne,
        'Jua': PartJ.jua,
        'Judson': PartJ.judson,
        'Julee': PartJ.julee,
        'Julius Sans One': PartJ.juliusSansOne,
        'Junge': PartJ.junge,
        'Jura': PartJ.jura,
        'Just Another Hand': PartJ.justAnotherHand,
        'Just Me Again Down Here': PartJ.justMeAgainDownHere,
        'K2D': PartK.k2d,
        'Kablammo': PartK.kablammo,
        'Kadwa': PartK.kadwa,
        'Kaisei Decol': PartK.kaiseiDecol,
        'Kaisei HarunoUmi': PartK.kaiseiHarunoUmi,
        'Kaisei Opti': PartK.kaiseiOpti,
        'Kaisei Tokumin': PartK.kaiseiTokumin,
        'Kalam': PartK.kalam,
        'Kalnia': PartK.kalnia,
        'Kalnia Glaze': PartK.kalniaGlaze,
        'Kameron': PartK.kameron,
        'Kanit': PartK.kanit,
        'Kantumruy Pro': PartK.kantumruyPro,
        'Karantina': PartK.karantina,
        'Karla': PartK.karla,
        'Karma': PartK.karma,
        'Katibeh': PartK.katibeh,
        'Kaushan Script': PartK.kaushanScript,
        'Kavivanar': PartK.kavivanar,
        'Kavoon': PartK.kavoon,
        'Kay Pho Du': PartK.kayPhoDu,
        'Kdam Thmor Pro': PartK.kdamThmorPro,
        'Keania One': PartK.keaniaOne,
        'Kelly Slab': PartK.kellySlab,
        'Kenia': PartK.kenia,
        'Khand': PartK.khand,
        'Khmer': PartK.khmer,
        'Khula': PartK.khula,
        'Kings': PartK.kings,
        'Kirang Haerang': PartK.kirangHaerang,
        'Kite One': PartK.kiteOne,
        'Kiwi Maru': PartK.kiwiMaru,
        'Klee One': PartK.kleeOne,
        'Knewave': PartK.knewave,
        'KoHo': PartK.koHo,
        'Kodchasan': PartK.kodchasan,
        'Kode Mono': PartK.kodeMono,
        'Koh Santepheap': PartK.kohSantepheap,
        'Kolker Brush': PartK.kolkerBrush,
        'Konkhmer Sleokchher': PartK.konkhmerSleokchher,
        'Kosugi': PartK.kosugi,
        'Kosugi Maru': PartK.kosugiMaru,
        'Kotta One': PartK.kottaOne,
        'Koulen': PartK.koulen,
        'Kranky': PartK.kranky,
        'Kreon': PartK.kreon,
        'Kristi': PartK.kristi,
        'Krona One': PartK.kronaOne,
        'Krub': PartK.krub,
        'Kufam': PartK.kufam,
        'Kulim Park': PartK.kulimPark,
        'Kumar One': PartK.kumarOne,
        'Kumar One Outline': PartK.kumarOneOutline,
        'Kumbh Sans': PartK.kumbhSans,
        'Kurale': PartK.kurale,
        'LXGW WenKai Mono TC': PartL.lxgwWenKaiMonoTc,
        'LXGW WenKai TC': PartL.lxgwWenKaiTc,
        'La Belle Aurore': PartL.laBelleAurore,
        'Labrada': PartL.labrada,
        'Lacquer': PartL.lacquer,
        'Laila': PartL.laila,
        'Lakki Reddy': PartL.lakkiReddy,
        'Lalezar': PartL.lalezar,
        'Lancelot': PartL.lancelot,
        'Langar': PartL.langar,
        'Lateef': PartL.lateef,
        'Lato': PartL.lato,
        'Lavishly Yours': PartL.lavishlyYours,
        'League Gothic': PartL.leagueGothic,
        'League Script': PartL.leagueScript,
        'League Spartan': PartL.leagueSpartan,
        'Leckerli One': PartL.leckerliOne,
        'Ledger': PartL.ledger,
        'Lekton': PartL.lekton,
        'Lemon': PartL.lemon,
        'Lemonada': PartL.lemonada,
        'Lexend': PartL.lexend,
        'Lexend Deca': PartL.lexendDeca,
        'Lexend Exa': PartL.lexendExa,
        'Lexend Giga': PartL.lexendGiga,
        'Lexend Mega': PartL.lexendMega,
        'Lexend Peta': PartL.lexendPeta,
        'Lexend Tera': PartL.lexendTera,
        'Lexend Zetta': PartL.lexendZetta,
        'Libre Barcode 128': PartL.libreBarcode128,
        'Libre Barcode 128 Text': PartL.libreBarcode128Text,
        'Libre Barcode 39': PartL.libreBarcode39,
        'Libre Barcode 39 Extended': PartL.libreBarcode39Extended,
        'Libre Barcode 39 Extended Text': PartL.libreBarcode39ExtendedText,
        'Libre Barcode 39 Text': PartL.libreBarcode39Text,
        'Libre Barcode EAN13 Text': PartL.libreBarcodeEan13Text,
        'Libre Baskerville': PartL.libreBaskerville,
        'Libre Bodoni': PartL.libreBodoni,
        'Libre Caslon Display': PartL.libreCaslonDisplay,
        'Libre Caslon Text': PartL.libreCaslonText,
        'Libre Franklin': PartL.libreFranklin,
        'Licorice': PartL.licorice,
        'Life Savers': PartL.lifeSavers,
        'Lilita One': PartL.lilitaOne,
        'Lily Script One': PartL.lilyScriptOne,
        'Limelight': PartL.limelight,
        'Linden Hill': PartL.lindenHill,
        'Linefont': PartL.linefont,
        'Lisu Bosa': PartL.lisuBosa,
        'Literata': PartL.literata,
        'Liu Jian Mao Cao': PartL.liuJianMaoCao,
        'Livvic': PartL.livvic,
        'Lobster': PartL.lobster,
        'Lobster Two': PartL.lobsterTwo,
        'Londrina Outline': PartL.londrinaOutline,
        'Londrina Shadow': PartL.londrinaShadow,
        'Londrina Sketch': PartL.londrinaSketch,
        'Londrina Solid': PartL.londrinaSolid,
        'Long Cang': PartL.longCang,
        'Lora': PartL.lora,
        'Love Light': PartL.loveLight,
        'Love Ya Like A Sister': PartL.loveYaLikeASister,
        'Loved by the King': PartL.lovedByTheKing,
        'Lovers Quarrel': PartL.loversQuarrel,
        'Luckiest Guy': PartL.luckiestGuy,
        'Lugrasimo': PartL.lugrasimo,
        'Lumanosimo': PartL.lumanosimo,
        'Lunasima': PartL.lunasima,
        'Lusitana': PartL.lusitana,
        'Lustria': PartL.lustria,
        'Luxurious Roman': PartL.luxuriousRoman,
        'Luxurious Script': PartL.luxuriousScript,
        'M PLUS 1': PartM.mPlus1,
        'M PLUS 1 Code': PartM.mPlus1Code,
        'M PLUS 1p': PartM.mPlus1p,
        'M PLUS 2': PartM.mPlus2,
        'M PLUS Code Latin': PartM.mPlusCodeLatin,
        'M PLUS Rounded 1c': PartM.mPlusRounded1c,
        'Ma Shan Zheng': PartM.maShanZheng,
        'Macondo': PartM.macondo,
        'Macondo Swash Caps': PartM.macondoSwashCaps,
        'Mada': PartM.mada,
        'Madimi One': PartM.madimiOne,
        'Magra': PartM.magra,
        'Maiden Orange': PartM.maidenOrange,
        'Maitree': PartM.maitree,
        'Major Mono Display': PartM.majorMonoDisplay,
        'Mako': PartM.mako,
        'Mali': PartM.mali,
        'Mallanna': PartM.mallanna,
        'Maname': PartM.maname,
        'Mandali': PartM.mandali,
        'Manjari': PartM.manjari,
        'Manrope': PartM.manrope,
        'Mansalva': PartM.mansalva,
        'Manuale': PartM.manuale,
        'Marcellus': PartM.marcellus,
        'Marcellus SC': PartM.marcellusSc,
        'Marck Script': PartM.marckScript,
        'Margarine': PartM.margarine,
        'Marhey': PartM.marhey,
        'Markazi Text': PartM.markaziText,
        'Marko One': PartM.markoOne,
        'Marmelad': PartM.marmelad,
        'Martel': PartM.martel,
        'Martel Sans': PartM.martelSans,
        'Martian Mono': PartM.martianMono,
        'Marvel': PartM.marvel,
        'Mate': PartM.mate,
        'Mate SC': PartM.mateSc,
        'Maven Pro': PartM.mavenPro,
        'McLaren': PartM.mcLaren,
        'Mea Culpa': PartM.meaCulpa,
        'Meddon': PartM.meddon,
        'MedievalSharp': PartM.medievalSharp,
        'Medula One': PartM.medulaOne,
        'Meera Inimai': PartM.meeraInimai,
        'Megrim': PartM.megrim,
        'Meie Script': PartM.meieScript,
        'Meow Script': PartM.meowScript,
        'Merienda': PartM.merienda,
        'Merriweather': PartM.merriweather,
        'Merriweather Sans': PartM.merriweatherSans,
        'Metal': PartM.metal,
        'Metal Mania': PartM.metalMania,
        'Metamorphous': PartM.metamorphous,
        'Metrophobic': PartM.metrophobic,
        'Michroma': PartM.michroma,
        'Micro 5': PartM.micro5,
        'Micro 5 Charted': PartM.micro5Charted,
        'Milonga': PartM.milonga,
        'Miltonian': PartM.miltonian,
        'Miltonian Tattoo': PartM.miltonianTattoo,
        'Mina': PartM.mina,
        'Mingzat': PartM.mingzat,
        'Miniver': PartM.miniver,
        'Miriam Libre': PartM.miriamLibre,
        'Mirza': PartM.mirza,
        'Miss Fajardose': PartM.missFajardose,
        'Mitr': PartM.mitr,
        'Mochiy Pop One': PartM.mochiyPopOne,
        'Mochiy Pop P One': PartM.mochiyPopPOne,
        'Modak': PartM.modak,
        'Modern Antiqua': PartM.modernAntiqua,
        'Mogra': PartM.mogra,
        'Mohave': PartM.mohave,
        'Moirai One': PartM.moiraiOne,
        'Molengo': PartM.molengo,
        'Molle': PartM.molle,
        'Monda': PartM.monda,
        'Monofett': PartM.monofett,
        'Monomaniac One': PartM.monomaniacOne,
        'Monoton': PartM.monoton,
        'Monsieur La Doulaise': PartM.monsieurLaDoulaise,
        'Montaga': PartM.montaga,
        'Montagu Slab': PartM.montaguSlab,
        'MonteCarlo': PartM.monteCarlo,
        'Montez': PartM.montez,
        'Montserrat': PartM.montserrat,
        'Montserrat Alternates': PartM.montserratAlternates,
        'Montserrat Subrayada': PartM.montserratSubrayada,
        'Moo Lah Lah': PartM.mooLahLah,
        'Mooli': PartM.mooli,
        'Moon Dance': PartM.moonDance,
        'Moul': PartM.moul,
        'Moulpali': PartM.moulpali,
        'Mountains of Christmas': PartM.mountainsOfChristmas,
        'Mouse Memoirs': PartM.mouseMemoirs,
        'Mr Bedfort': PartM.mrBedfort,
        'Mr Dafoe': PartM.mrDafoe,
        'Mr De Haviland': PartM.mrDeHaviland,
        'Mrs Saint Delafield': PartM.mrsSaintDelafield,
        'Mrs Sheppards': PartM.mrsSheppards,
        'Ms Madi': PartM.msMadi,
        'Mukta': PartM.mukta,
        'Mukta Mahee': PartM.muktaMahee,
        'Mukta Malar': PartM.muktaMalar,
        'Mukta Vaani': PartM.muktaVaani,
        'Mulish': PartM.mulish,
        'Murecho': PartM.murecho,
        'MuseoModerno': PartM.museoModerno,
        'My Soul': PartM.mySoul,
        'Mynerve': PartM.mynerve,
        'Mystery Quest': PartM.mysteryQuest,
        'NTR': PartN.ntr,
        'Nabla': PartN.nabla,
        'Namdhinggo': PartN.namdhinggo,
        'Nanum Brush Script': PartN.nanumBrushScript,
        'Nanum Gothic': PartN.nanumGothic,
        'Nanum Gothic Coding': PartN.nanumGothicCoding,
        'Nanum Myeongjo': PartN.nanumMyeongjo,
        'Nanum Pen Script': PartN.nanumPenScript,
        'Narnoor': PartN.narnoor,
        'Neonderthaw': PartN.neonderthaw,
        'Nerko One': PartN.nerkoOne,
        'Neucha': PartN.neucha,
        'Neuton': PartN.neuton,
        'New Rocker': PartN.newRocker,
        'New Tegomin': PartN.newTegomin,
        'News Cycle': PartN.newsCycle,
        'Newsreader': PartN.newsreader,
        'Niconne': PartN.niconne,
        'Niramit': PartN.niramit,
        'Nixie One': PartN.nixieOne,
        'Nobile': PartN.nobile,
        'Nokora': PartN.nokora,
        'Norican': PartN.norican,
        'Nosifer': PartN.nosifer,
        'Notable': PartN.notable,
        'Nothing You Could Do': PartN.nothingYouCouldDo,
        'Noticia Text': PartN.noticiaText,
        'Noto Color Emoji': PartN.notoColorEmoji,
        'Noto Emoji': PartN.notoEmoji,
        'Noto Kufi Arabic': PartN.notoKufiArabic,
        'Noto Music': PartN.notoMusic,
        'Noto Naskh Arabic': PartN.notoNaskhArabic,
        'Noto Nastaliq Urdu': PartN.notoNastaliqUrdu,
        'Noto Rashi Hebrew': PartN.notoRashiHebrew,
        'Noto Sans': PartN.notoSans,
        'Noto Sans Adlam': PartN.notoSansAdlam,
        'Noto Sans Adlam Unjoined': PartN.notoSansAdlamUnjoined,
        'Noto Sans Anatolian Hieroglyphs': PartN.notoSansAnatolianHieroglyphs,
        'Noto Sans Arabic': PartN.notoSansArabic,
        'Noto Sans Armenian': PartN.notoSansArmenian,
        'Noto Sans Avestan': PartN.notoSansAvestan,
        'Noto Sans Balinese': PartN.notoSansBalinese,
        'Noto Sans Bamum': PartN.notoSansBamum,
        'Noto Sans Bassa Vah': PartN.notoSansBassaVah,
        'Noto Sans Batak': PartN.notoSansBatak,
        'Noto Sans Bengali': PartN.notoSansBengali,
        'Noto Sans Bhaiksuki': PartN.notoSansBhaiksuki,
        'Noto Sans Brahmi': PartN.notoSansBrahmi,
        'Noto Sans Buginese': PartN.notoSansBuginese,
        'Noto Sans Buhid': PartN.notoSansBuhid,
        'Noto Sans Canadian Aboriginal': PartN.notoSansCanadianAboriginal,
        'Noto Sans Carian': PartN.notoSansCarian,
        'Noto Sans Caucasian Albanian': PartN.notoSansCaucasianAlbanian,
        'Noto Sans Chakma': PartN.notoSansChakma,
        'Noto Sans Cham': PartN.notoSansCham,
        'Noto Sans Cherokee': PartN.notoSansCherokee,
        'Noto Sans Chorasmian': PartN.notoSansChorasmian,
        'Noto Sans Coptic': PartN.notoSansCoptic,
        'Noto Sans Cuneiform': PartN.notoSansCuneiform,
        'Noto Sans Cypriot': PartN.notoSansCypriot,
        'Noto Sans Cypro Minoan': PartN.notoSansCyproMinoan,
        'Noto Sans Deseret': PartN.notoSansDeseret,
        'Noto Sans Devanagari': PartN.notoSansDevanagari,
        'Noto Sans Display': PartN.notoSansDisplay,
        'Noto Sans Duployan': PartN.notoSansDuployan,
        'Noto Sans Egyptian Hieroglyphs': PartN.notoSansEgyptianHieroglyphs,
        'Noto Sans Elbasan': PartN.notoSansElbasan,
        'Noto Sans Elymaic': PartN.notoSansElymaic,
        'Noto Sans Ethiopic': PartN.notoSansEthiopic,
        'Noto Sans Georgian': PartN.notoSansGeorgian,
        'Noto Sans Glagolitic': PartN.notoSansGlagolitic,
        'Noto Sans Gothic': PartN.notoSansGothic,
        'Noto Sans Grantha': PartN.notoSansGrantha,
        'Noto Sans Gujarati': PartN.notoSansGujarati,
        'Noto Sans Gunjala Gondi': PartN.notoSansGunjalaGondi,
        'Noto Sans Gurmukhi': PartN.notoSansGurmukhi,
        'Noto Sans HK': PartN.notoSansHk,
        'Noto Sans Hanifi Rohingya': PartN.notoSansHanifiRohingya,
        'Noto Sans Hanunoo': PartN.notoSansHanunoo,
        'Noto Sans Hatran': PartN.notoSansHatran,
        'Noto Sans Hebrew': PartN.notoSansHebrew,
        'Noto Sans Imperial Aramaic': PartN.notoSansImperialAramaic,
        'Noto Sans Indic Siyaq Numbers': PartN.notoSansIndicSiyaqNumbers,
        'Noto Sans Inscriptional Pahlavi': PartN.notoSansInscriptionalPahlavi,
        'Noto Sans Inscriptional Parthian': PartN.notoSansInscriptionalParthian,
        'Noto Sans JP': PartN.notoSansJp,
        'Noto Sans Javanese': PartN.notoSansJavanese,
        'Noto Sans KR': PartN.notoSansKr,
        'Noto Sans Kaithi': PartN.notoSansKaithi,
        'Noto Sans Kannada': PartN.notoSansKannada,
        'Noto Sans Kawi': PartN.notoSansKawi,
        'Noto Sans Kayah Li': PartN.notoSansKayahLi,
        'Noto Sans Kharoshthi': PartN.notoSansKharoshthi,
        'Noto Sans Khmer': PartN.notoSansKhmer,
        'Noto Sans Khojki': PartN.notoSansKhojki,
        'Noto Sans Khudawadi': PartN.notoSansKhudawadi,
        'Noto Sans Lao': PartN.notoSansLao,
        'Noto Sans Lao Looped': PartN.notoSansLaoLooped,
        'Noto Sans Lepcha': PartN.notoSansLepcha,
        'Noto Sans Limbu': PartN.notoSansLimbu,
        'Noto Sans Linear A': PartN.notoSansLinearA,
        'Noto Sans Linear B': PartN.notoSansLinearB,
        'Noto Sans Lisu': PartN.notoSansLisu,
        'Noto Sans Lycian': PartN.notoSansLycian,
        'Noto Sans Lydian': PartN.notoSansLydian,
        'Noto Sans Mahajani': PartN.notoSansMahajani,
        'Noto Sans Malayalam': PartN.notoSansMalayalam,
        'Noto Sans Mandaic': PartN.notoSansMandaic,
        'Noto Sans Manichaean': PartN.notoSansManichaean,
        'Noto Sans Marchen': PartN.notoSansMarchen,
        'Noto Sans Masaram Gondi': PartN.notoSansMasaramGondi,
        'Noto Sans Math': PartN.notoSansMath,
        'Noto Sans Mayan Numerals': PartN.notoSansMayanNumerals,
        'Noto Sans Medefaidrin': PartN.notoSansMedefaidrin,
        'Noto Sans Meetei Mayek': PartN.notoSansMeeteiMayek,
        'Noto Sans Mende Kikakui': PartN.notoSansMendeKikakui,
        'Noto Sans Meroitic': PartN.notoSansMeroitic,
        'Noto Sans Miao': PartN.notoSansMiao,
        'Noto Sans Modi': PartN.notoSansModi,
        'Noto Sans Mongolian': PartN.notoSansMongolian,
        'Noto Sans Mono': PartN.notoSansMono,
        'Noto Sans Mro': PartN.notoSansMro,
        'Noto Sans Multani': PartN.notoSansMultani,
        'Noto Sans Myanmar': PartN.notoSansMyanmar,
        'Noto Sans NKo': PartN.notoSansNKo,
        'Noto Sans NKo Unjoined': PartN.notoSansNKoUnjoined,
        'Noto Sans Nabataean': PartN.notoSansNabataean,
        'Noto Sans Nag Mundari': PartN.notoSansNagMundari,
        'Noto Sans Nandinagari': PartN.notoSansNandinagari,
        'Noto Sans New Tai Lue': PartN.notoSansNewTaiLue,
        'Noto Sans Newa': PartN.notoSansNewa,
        'Noto Sans Nushu': PartN.notoSansNushu,
        'Noto Sans Ogham': PartN.notoSansOgham,
        'Noto Sans Ol Chiki': PartN.notoSansOlChiki,
        'Noto Sans Old Hungarian': PartN.notoSansOldHungarian,
        'Noto Sans Old Italic': PartN.notoSansOldItalic,
        'Noto Sans Old North Arabian': PartN.notoSansOldNorthArabian,
        'Noto Sans Old Permic': PartN.notoSansOldPermic,
        'Noto Sans Old Persian': PartN.notoSansOldPersian,
        'Noto Sans Old Sogdian': PartN.notoSansOldSogdian,
        'Noto Sans Old South Arabian': PartN.notoSansOldSouthArabian,
        'Noto Sans Old Turkic': PartN.notoSansOldTurkic,
        'Noto Sans Oriya': PartN.notoSansOriya,
        'Noto Sans Osage': PartN.notoSansOsage,
        'Noto Sans Osmanya': PartN.notoSansOsmanya,
        'Noto Sans Pahawh Hmong': PartN.notoSansPahawhHmong,
        'Noto Sans Palmyrene': PartN.notoSansPalmyrene,
        'Noto Sans Pau Cin Hau': PartN.notoSansPauCinHau,
        'Noto Sans Phags Pa': PartN.notoSansPhagsPa,
        'Noto Sans Phoenician': PartN.notoSansPhoenician,
        'Noto Sans Psalter Pahlavi': PartN.notoSansPsalterPahlavi,
        'Noto Sans Rejang': PartN.notoSansRejang,
        'Noto Sans Runic': PartN.notoSansRunic,
        'Noto Sans SC': PartN.notoSansSc,
        'Noto Sans Samaritan': PartN.notoSansSamaritan,
        'Noto Sans Saurashtra': PartN.notoSansSaurashtra,
        'Noto Sans Sharada': PartN.notoSansSharada,
        'Noto Sans Shavian': PartN.notoSansShavian,
        'Noto Sans Siddham': PartN.notoSansSiddham,
        'Noto Sans SignWriting': PartN.notoSansSignWriting,
        'Noto Sans Sinhala': PartN.notoSansSinhala,
        'Noto Sans Sogdian': PartN.notoSansSogdian,
        'Noto Sans Sora Sompeng': PartN.notoSansSoraSompeng,
        'Noto Sans Soyombo': PartN.notoSansSoyombo,
        'Noto Sans Sundanese': PartN.notoSansSundanese,
        'Noto Sans Syloti Nagri': PartN.notoSansSylotiNagri,
        'Noto Sans Symbols': PartN.notoSansSymbols,
        'Noto Sans Symbols 2': PartN.notoSansSymbols2,
        'Noto Sans Syriac': PartN.notoSansSyriac,
        'Noto Sans Syriac Eastern': PartN.notoSansSyriacEastern,
        'Noto Sans TC': PartN.notoSansTc,
        'Noto Sans Tagalog': PartN.notoSansTagalog,
        'Noto Sans Tagbanwa': PartN.notoSansTagbanwa,
        'Noto Sans Tai Le': PartN.notoSansTaiLe,
        'Noto Sans Tai Tham': PartN.notoSansTaiTham,
        'Noto Sans Tai Viet': PartN.notoSansTaiViet,
        'Noto Sans Takri': PartN.notoSansTakri,
        'Noto Sans Tamil': PartN.notoSansTamil,
        'Noto Sans Tamil Supplement': PartN.notoSansTamilSupplement,
        'Noto Sans Tangsa': PartN.notoSansTangsa,
        'Noto Sans Telugu': PartN.notoSansTelugu,
        'Noto Sans Thaana': PartN.notoSansThaana,
        'Noto Sans Thai': PartN.notoSansThai,
        'Noto Sans Thai Looped': PartN.notoSansThaiLooped,
        'Noto Sans Tifinagh': PartN.notoSansTifinagh,
        'Noto Sans Tirhuta': PartN.notoSansTirhuta,
        'Noto Sans Ugaritic': PartN.notoSansUgaritic,
        'Noto Sans Vai': PartN.notoSansVai,
        'Noto Sans Vithkuqi': PartN.notoSansVithkuqi,
        'Noto Sans Wancho': PartN.notoSansWancho,
        'Noto Sans Warang Citi': PartN.notoSansWarangCiti,
        'Noto Sans Yi': PartN.notoSansYi,
        'Noto Sans Zanabazar Square': PartN.notoSansZanabazarSquare,
        'Noto Serif': PartN.notoSerif,
        'Noto Serif Ahom': PartN.notoSerifAhom,
        'Noto Serif Armenian': PartN.notoSerifArmenian,
        'Noto Serif Balinese': PartN.notoSerifBalinese,
        'Noto Serif Bengali': PartN.notoSerifBengali,
        'Noto Serif Devanagari': PartN.notoSerifDevanagari,
        'Noto Serif Display': PartN.notoSerifDisplay,
        'Noto Serif Dogra': PartN.notoSerifDogra,
        'Noto Serif Ethiopic': PartN.notoSerifEthiopic,
        'Noto Serif Georgian': PartN.notoSerifGeorgian,
        'Noto Serif Grantha': PartN.notoSerifGrantha,
        'Noto Serif Gujarati': PartN.notoSerifGujarati,
        'Noto Serif Gurmukhi': PartN.notoSerifGurmukhi,
        'Noto Serif HK': PartN.notoSerifHk,
        'Noto Serif Hebrew': PartN.notoSerifHebrew,
        'Noto Serif JP': PartN.notoSerifJp,
        'Noto Serif KR': PartN.notoSerifKr,
        'Noto Serif Kannada': PartN.notoSerifKannada,
        'Noto Serif Khitan Small Script': PartN.notoSerifKhitanSmallScript,
        'Noto Serif Khmer': PartN.notoSerifKhmer,
        'Noto Serif Khojki': PartN.notoSerifKhojki,
        'Noto Serif Lao': PartN.notoSerifLao,
        'Noto Serif Makasar': PartN.notoSerifMakasar,
        'Noto Serif Malayalam': PartN.notoSerifMalayalam,
        'Noto Serif Myanmar': PartN.notoSerifMyanmar,
        'Noto Serif NP Hmong': PartN.notoSerifNpHmong,
        'Noto Serif Old Uyghur': PartN.notoSerifOldUyghur,
        'Noto Serif Oriya': PartN.notoSerifOriya,
        'Noto Serif Ottoman Siyaq': PartN.notoSerifOttomanSiyaq,
        'Noto Serif SC': PartN.notoSerifSc,
        'Noto Serif Sinhala': PartN.notoSerifSinhala,
        'Noto Serif TC': PartN.notoSerifTc,
        'Noto Serif Tamil': PartN.notoSerifTamil,
        'Noto Serif Tangut': PartN.notoSerifTangut,
        'Noto Serif Telugu': PartN.notoSerifTelugu,
        'Noto Serif Thai': PartN.notoSerifThai,
        'Noto Serif Tibetan': PartN.notoSerifTibetan,
        'Noto Serif Toto': PartN.notoSerifToto,
        'Noto Serif Vithkuqi': PartN.notoSerifVithkuqi,
        'Noto Serif Yezidi': PartN.notoSerifYezidi,
        'Noto Traditional Nushu': PartN.notoTraditionalNushu,
        'Noto Znamenny Musical Notation': PartN.notoZnamennyMusicalNotation,
        'Nova Cut': PartN.novaCut,
        'Nova Flat': PartN.novaFlat,
        'Nova Mono': PartN.novaMono,
        'Nova Oval': PartN.novaOval,
        'Nova Round': PartN.novaRound,
        'Nova Script': PartN.novaScript,
        'Nova Slim': PartN.novaSlim,
        'Nova Square': PartN.novaSquare,
        'Numans': PartN.numans,
        'Nunito': PartN.nunito,
        'Nunito Sans': PartN.nunitoSans,
        'Nuosu SIL': PartN.nuosuSil,
        'Odibee Sans': PartO.odibeeSans,
        'Odor Mean Chey': PartO.odorMeanChey,
        'Offside': PartO.offside,
        'Oi': PartO.oi,
        'Ojuju': PartO.ojuju,
        'Old Standard TT': PartO.oldStandardTt,
        'Oldenburg': PartO.oldenburg,
        'Ole': PartO.ole,
        'Oleo Script': PartO.oleoScript,
        'Oleo Script Swash Caps': PartO.oleoScriptSwashCaps,
        'Onest': PartO.onest,
        'Oooh Baby': PartO.ooohBaby,
        'Open Sans': PartO.openSans,
        'Open Sans Condensed': PartO.openSansCondensed,
        'Oranienbaum': PartO.oranienbaum,
        'Orbit': PartO.orbit,
        'Orbitron': PartO.orbitron,
        'Oregano': PartO.oregano,
        'Orelega One': PartO.orelegaOne,
        'Orienta': PartO.orienta,
        'Original Surfer': PartO.originalSurfer,
        'Oswald': PartO.oswald,
        'Outfit': PartO.outfit,
        'Over the Rainbow': PartO.overTheRainbow,
        'Overlock': PartO.overlock,
        'Overlock SC': PartO.overlockSc,
        'Overpass': PartO.overpass,
        'Overpass Mono': PartO.overpassMono,
        'Ovo': PartO.ovo,
        'Oxanium': PartO.oxanium,
        'Oxygen': PartO.oxygen,
        'Oxygen Mono': PartO.oxygenMono,
        'PT Mono': PartP.ptMono,
        'PT Sans': PartP.ptSans,
        'PT Sans Caption': PartP.ptSansCaption,
        'PT Sans Narrow': PartP.ptSansNarrow,
        'PT Serif': PartP.ptSerif,
        'PT Serif Caption': PartP.ptSerifCaption,
        'Pacifico': PartP.pacifico,
        'Padauk': PartP.padauk,
        'Padyakke Expanded One': PartP.padyakkeExpandedOne,
        'Palanquin': PartP.palanquin,
        'Palanquin Dark': PartP.palanquinDark,
        'Palette Mosaic': PartP.paletteMosaic,
        'Pangolin': PartP.pangolin,
        'Paprika': PartP.paprika,
        'Parisienne': PartP.parisienne,
        'Passero One': PartP.passeroOne,
        'Passion One': PartP.passionOne,
        'Passions Conflict': PartP.passionsConflict,
        'Pathway Extreme': PartP.pathwayExtreme,
        'Pathway Gothic One': PartP.pathwayGothicOne,
        'Patrick Hand': PartP.patrickHand,
        'Patrick Hand SC': PartP.patrickHandSc,
        'Pattaya': PartP.pattaya,
        'Patua One': PartP.patuaOne,
        'Pavanam': PartP.pavanam,
        'Paytone One': PartP.paytoneOne,
        'Peddana': PartP.peddana,
        'Peralta': PartP.peralta,
        'Permanent Marker': PartP.permanentMarker,
        'Petemoss': PartP.petemoss,
        'Petit Formal Script': PartP.petitFormalScript,
        'Petrona': PartP.petrona,
        'Philosopher': PartP.philosopher,
        'Phudu': PartP.phudu,
        'Piazzolla': PartP.piazzolla,
        'Piedra': PartP.piedra,
        'Pinyon Script': PartP.pinyonScript,
        'Pirata One': PartP.pirataOne,
        'Pixelify Sans': PartP.pixelifySans,
        'Plaster': PartP.plaster,
        'Platypi': PartP.platypi,
        'Play': PartP.play,
        'Playball': PartP.playball,
        'Playfair': PartP.playfair,
        'Playfair Display': PartP.playfairDisplay,
        'Playfair Display SC': PartP.playfairDisplaySc,
        'Playpen Sans': PartP.playpenSans,
        'Playwrite AR': PartP.playwriteAr,
        'Playwrite AT': PartP.playwriteAt,
        'Playwrite AU NSW': PartP.playwriteAuNsw,
        'Playwrite AU QLD': PartP.playwriteAuQld,
        'Playwrite AU SA': PartP.playwriteAuSa,
        'Playwrite AU TAS': PartP.playwriteAuTas,
        'Playwrite AU VIC': PartP.playwriteAuVic,
        'Playwrite BE VLG': PartP.playwriteBeVlg,
        'Playwrite BE WAL': PartP.playwriteBeWal,
        'Playwrite BR': PartP.playwriteBr,
        'Playwrite CA': PartP.playwriteCa,
        'Playwrite CL': PartP.playwriteCl,
        'Playwrite CO': PartP.playwriteCo,
        'Playwrite CU': PartP.playwriteCu,
        'Playwrite CZ': PartP.playwriteCz,
        'Playwrite DE Grund': PartP.playwriteDeGrund,
        'Playwrite DE LA': PartP.playwriteDeLa,
        'Playwrite DE SAS': PartP.playwriteDeSas,
        'Playwrite DE VA': PartP.playwriteDeVa,
        'Playwrite DK Loopet': PartP.playwriteDkLoopet,
        'Playwrite DK Uloopet': PartP.playwriteDkUloopet,
        'Playwrite ES': PartP.playwriteEs,
        'Playwrite ES Deco': PartP.playwriteEsDeco,
        'Playwrite FR Moderne': PartP.playwriteFrModerne,
        'Playwrite FR Trad': PartP.playwriteFrTrad,
        'Playwrite GB J': PartP.playwriteGbJ,
        'Playwrite GB S': PartP.playwriteGbS,
        'Playwrite HR': PartP.playwriteHr,
        'Playwrite HR Lijeva': PartP.playwriteHrLijeva,
        'Playwrite HU': PartP.playwriteHu,
        'Playwrite ID': PartP.playwriteId,
        'Playwrite IE': PartP.playwriteIe,
        'Playwrite IN': PartP.playwriteIn,
        'Playwrite IS': PartP.playwriteIs,
        'Playwrite IT Moderna': PartP.playwriteItModerna,
        'Playwrite IT Trad': PartP.playwriteItTrad,
        'Playwrite MX': PartP.playwriteMx,
        'Playwrite NG Modern': PartP.playwriteNgModern,
        'Playwrite NL': PartP.playwriteNl,
        'Playwrite NO': PartP.playwriteNo,
        'Playwrite NZ': PartP.playwriteNz,
        'Playwrite PE': PartP.playwritePe,
        'Playwrite PL': PartP.playwritePl,
        'Playwrite PT': PartP.playwritePt,
        'Playwrite RO': PartP.playwriteRo,
        'Playwrite SK': PartP.playwriteSk,
        'Playwrite TZ': PartP.playwriteTz,
        'Playwrite US Modern': PartP.playwriteUsModern,
        'Playwrite US Trad': PartP.playwriteUsTrad,
        'Playwrite VN': PartP.playwriteVn,
        'Playwrite ZA': PartP.playwriteZa,
        'Plus Jakarta Sans': PartP.plusJakartaSans,
        'Podkova': PartP.podkova,
        'Poetsen One': PartP.poetsenOne,
        'Poiret One': PartP.poiretOne,
        'Poller One': PartP.pollerOne,
        'Poltawski Nowy': PartP.poltawskiNowy,
        'Poly': PartP.poly,
        'Pompiere': PartP.pompiere,
        'Pontano Sans': PartP.pontanoSans,
        'Poor Story': PartP.poorStory,
        'Poppins': PartP.poppins,
        'Port Lligat Sans': PartP.portLligatSans,
        'Port Lligat Slab': PartP.portLligatSlab,
        'Potta One': PartP.pottaOne,
        'Pragati Narrow': PartP.pragatiNarrow,
        'Praise': PartP.praise,
        'Prata': PartP.prata,
        'Preahvihear': PartP.preahvihear,
        'Press Start 2P': PartP.pressStart2p,
        'Pridi': PartP.pridi,
        'Princess Sofia': PartP.princessSofia,
        'Prociono': PartP.prociono,
        'Prompt': PartP.prompt,
        'Prosto One': PartP.prostoOne,
        'Protest Guerrilla': PartP.protestGuerrilla,
        'Protest Revolution': PartP.protestRevolution,
        'Protest Riot': PartP.protestRiot,
        'Protest Strike': PartP.protestStrike,
        'Proza Libre': PartP.prozaLibre,
        'Public Sans': PartP.publicSans,
        'Puppies Play': PartP.puppiesPlay,
        'Puritan': PartP.puritan,
        'Purple Purse': PartP.purplePurse,
        'Qahiri': PartQ.qahiri,
        'Quando': PartQ.quando,
        'Quantico': PartQ.quantico,
        'Quattrocento': PartQ.quattrocento,
        'Quattrocento Sans': PartQ.quattrocentoSans,
        'Questrial': PartQ.questrial,
        'Quicksand': PartQ.quicksand,
        'Quintessential': PartQ.quintessential,
        'Qwigley': PartQ.qwigley,
        'Qwitcher Grypen': PartQ.qwitcherGrypen,
        'REM': PartR.rem,
        'Racing Sans One': PartR.racingSansOne,
        'Radio Canada': PartR.radioCanada,
        'Radio Canada Big': PartR.radioCanadaBig,
        'Radley': PartR.radley,
        'Rajdhani': PartR.rajdhani,
        'Rakkas': PartR.rakkas,
        'Raleway': PartR.raleway,
        'Raleway Dots': PartR.ralewayDots,
        'Ramabhadra': PartR.ramabhadra,
        'Ramaraja': PartR.ramaraja,
        'Rambla': PartR.rambla,
        'Rammetto One': PartR.rammettoOne,
        'Rampart One': PartR.rampartOne,
        'Ranchers': PartR.ranchers,
        'Rancho': PartR.rancho,
        'Ranga': PartR.ranga,
        'Rasa': PartR.rasa,
        'Rationale': PartR.rationale,
        'Ravi Prakash': PartR.raviPrakash,
        'Readex Pro': PartR.readexPro,
        'Recursive': PartR.recursive,
        'Red Hat Display': PartR.redHatDisplay,
        'Red Hat Mono': PartR.redHatMono,
        'Red Hat Text': PartR.redHatText,
        'Red Rose': PartR.redRose,
        'Redacted': PartR.redacted,
        'Redacted Script': PartR.redactedScript,
        'Reddit Mono': PartR.redditMono,
        'Reddit Sans': PartR.redditSans,
        'Reddit Sans Condensed': PartR.redditSansCondensed,
        'Redressed': PartR.redressed,
        'Reem Kufi': PartR.reemKufi,
        'Reem Kufi Fun': PartR.reemKufiFun,
        'Reem Kufi Ink': PartR.reemKufiInk,
        'Reenie Beanie': PartR.reenieBeanie,
        'Reggae One': PartR.reggaeOne,
        'Rethink Sans': PartR.rethinkSans,
        'Revalia': PartR.revalia,
        'Rhodium Libre': PartR.rhodiumLibre,
        'Ribeye': PartR.ribeye,
        'Ribeye Marrow': PartR.ribeyeMarrow,
        'Righteous': PartR.righteous,
        'Risque': PartR.risque,
        'Road Rage': PartR.roadRage,
        'Roboto': PartR.roboto,
        'Roboto Condensed': PartR.robotoCondensed,
        'Roboto Flex': PartR.robotoFlex,
        'Roboto Mono': PartR.robotoMono,
        'Roboto Serif': PartR.robotoSerif,
        'Roboto Slab': PartR.robotoSlab,
        'Rochester': PartR.rochester,
        'Rock 3D': PartR.rock3d,
        'Rock Salt': PartR.rockSalt,
        'RocknRoll One': PartR.rocknRollOne,
        'Rokkitt': PartR.rokkitt,
        'Romanesco': PartR.romanesco,
        'Ropa Sans': PartR.ropaSans,
        'Rosario': PartR.rosario,
        'Rosarivo': PartR.rosarivo,
        'Rouge Script': PartR.rougeScript,
        'Rowdies': PartR.rowdies,
        'Rozha One': PartR.rozhaOne,
        'Rubik': PartR.rubik,
        'Rubik 80s Fade': PartR.rubik80sFade,
        'Rubik Beastly': PartR.rubikBeastly,
        'Rubik Broken Fax': PartR.rubikBrokenFax,
        'Rubik Bubbles': PartR.rubikBubbles,
        'Rubik Burned': PartR.rubikBurned,
        'Rubik Dirt': PartR.rubikDirt,
        'Rubik Distressed': PartR.rubikDistressed,
        'Rubik Doodle Shadow': PartR.rubikDoodleShadow,
        'Rubik Doodle Triangles': PartR.rubikDoodleTriangles,
        'Rubik Gemstones': PartR.rubikGemstones,
        'Rubik Glitch': PartR.rubikGlitch,
        'Rubik Glitch Pop': PartR.rubikGlitchPop,
        'Rubik Iso': PartR.rubikIso,
        'Rubik Lines': PartR.rubikLines,
        'Rubik Maps': PartR.rubikMaps,
        'Rubik Marker Hatch': PartR.rubikMarkerHatch,
        'Rubik Maze': PartR.rubikMaze,
        'Rubik Microbe': PartR.rubikMicrobe,
        'Rubik Mono One': PartR.rubikMonoOne,
        'Rubik Moonrocks': PartR.rubikMoonrocks,
        'Rubik Pixels': PartR.rubikPixels,
        'Rubik Puddles': PartR.rubikPuddles,
        'Rubik Scribble': PartR.rubikScribble,
        'Rubik Spray Paint': PartR.rubikSprayPaint,
        'Rubik Storm': PartR.rubikStorm,
        'Rubik Vinyl': PartR.rubikVinyl,
        'Rubik Wet Paint': PartR.rubikWetPaint,
        'Ruda': PartR.ruda,
        'Rufina': PartR.rufina,
        'Ruge Boogie': PartR.rugeBoogie,
        'Ruluko': PartR.ruluko,
        'Rum Raisin': PartR.rumRaisin,
        'Ruslan Display': PartR.ruslanDisplay,
        'Russo One': PartR.russoOne,
        'Ruthie': PartR.ruthie,
        'Ruwudu': PartR.ruwudu,
        'Rye': PartR.rye,
        'STIX Two Text': PartS.stixTwoText,
        'Sacramento': PartS.sacramento,
        'Sahitya': PartS.sahitya,
        'Sail': PartS.sail,
        'Saira': PartS.saira,
        'Saira Condensed': PartS.sairaCondensed,
        'Saira Extra Condensed': PartS.sairaExtraCondensed,
        'Saira Semi Condensed': PartS.sairaSemiCondensed,
        'Saira Stencil One': PartS.sairaStencilOne,
        'Salsa': PartS.salsa,
        'Sanchez': PartS.sanchez,
        'Sancreek': PartS.sancreek,
        'Sansita': PartS.sansita,
        'Sansita Swashed': PartS.sansitaSwashed,
        'Sarabun': PartS.sarabun,
        'Sarala': PartS.sarala,
        'Sarina': PartS.sarina,
        'Sarpanch': PartS.sarpanch,
        'Sassy Frass': PartS.sassyFrass,
        'Satisfy': PartS.satisfy,
        'Sawarabi Gothic': PartS.sawarabiGothic,
        'Sawarabi Mincho': PartS.sawarabiMincho,
        'Scada': PartS.scada,
        'Scheherazade New': PartS.scheherazadeNew,
        'Schibsted Grotesk': PartS.schibstedGrotesk,
        'Schoolbell': PartS.schoolbell,
        'Scope One': PartS.scopeOne,
        'Seaweed Script': PartS.seaweedScript,
        'Secular One': PartS.secularOne,
        'Sedan': PartS.sedan,
        'Sedan SC': PartS.sedanSc,
        'Sedgwick Ave': PartS.sedgwickAve,
        'Sedgwick Ave Display': PartS.sedgwickAveDisplay,
        'Sen': PartS.sen,
        'Send Flowers': PartS.sendFlowers,
        'Sevillana': PartS.sevillana,
        'Seymour One': PartS.seymourOne,
        'Shadows Into Light': PartS.shadowsIntoLight,
        'Shadows Into Light Two': PartS.shadowsIntoLightTwo,
        'Shalimar': PartS.shalimar,
        'Shantell Sans': PartS.shantellSans,
        'Shanti': PartS.shanti,
        'Share': PartS.share,
        'Share Tech': PartS.shareTech,
        'Share Tech Mono': PartS.shareTechMono,
        'Shippori Antique': PartS.shipporiAntique,
        'Shippori Antique B1': PartS.shipporiAntiqueB1,
        'Shippori Mincho': PartS.shipporiMincho,
        'Shippori Mincho B1': PartS.shipporiMinchoB1,
        'Shizuru': PartS.shizuru,
        'Shojumaru': PartS.shojumaru,
        'Short Stack': PartS.shortStack,
        'Shrikhand': PartS.shrikhand,
        'Siemreap': PartS.siemreap,
        'Sigmar': PartS.sigmar,
        'Sigmar One': PartS.sigmarOne,
        'Signika': PartS.signika,
        'Signika Negative': PartS.signikaNegative,
        'Silkscreen': PartS.silkscreen,
        'Simonetta': PartS.simonetta,
        'Single Day': PartS.singleDay,
        'Sintony': PartS.sintony,
        'Sirin Stencil': PartS.sirinStencil,
        'Six Caps': PartS.sixCaps,
        'Sixtyfour': PartS.sixtyfour,
        'Skranji': PartS.skranji,
        'Slabo 13px': PartS.slabo13px,
        'Slabo 27px': PartS.slabo27px,
        'Slackey': PartS.slackey,
        'Slackside One': PartS.slacksideOne,
        'Smokum': PartS.smokum,
        'Smooch': PartS.smooch,
        'Smooch Sans': PartS.smoochSans,
        'Smythe': PartS.smythe,
        'Sniglet': PartS.sniglet,
        'Snippet': PartS.snippet,
        'Snowburst One': PartS.snowburstOne,
        'Sofadi One': PartS.sofadiOne,
        'Sofia': PartS.sofia,
        'Sofia Sans': PartS.sofiaSans,
        'Sofia Sans Condensed': PartS.sofiaSansCondensed,
        'Sofia Sans Extra Condensed': PartS.sofiaSansExtraCondensed,
        'Sofia Sans Semi Condensed': PartS.sofiaSansSemiCondensed,
        'Solitreo': PartS.solitreo,
        'Solway': PartS.solway,
        'Sometype Mono': PartS.sometypeMono,
        'Song Myung': PartS.songMyung,
        'Sono': PartS.sono,
        'Sonsie One': PartS.sonsieOne,
        'Sora': PartS.sora,
        'Sorts Mill Goudy': PartS.sortsMillGoudy,
        'Source Code Pro': PartS.sourceCodePro,
        'Source Sans 3': PartS.sourceSans3,
        'Source Serif 4': PartS.sourceSerif4,
        'Space Grotesk': PartS.spaceGrotesk,
        'Space Mono': PartS.spaceMono,
        'Special Elite': PartS.specialElite,
        'Spectral': PartS.spectral,
        'Spectral SC': PartS.spectralSc,
        'Spicy Rice': PartS.spicyRice,
        'Spinnaker': PartS.spinnaker,
        'Spirax': PartS.spirax,
        'Splash': PartS.splash,
        'Spline Sans': PartS.splineSans,
        'Spline Sans Mono': PartS.splineSansMono,
        'Squada One': PartS.squadaOne,
        'Square Peg': PartS.squarePeg,
        'Sree Krushnadevaraya': PartS.sreeKrushnadevaraya,
        'Sriracha': PartS.sriracha,
        'Srisakdi': PartS.srisakdi,
        'Staatliches': PartS.staatliches,
        'Stalemate': PartS.stalemate,
        'Stalinist One': PartS.stalinistOne,
        'Stardos Stencil': PartS.stardosStencil,
        'Stick': PartS.stick,
        'Stick No Bills': PartS.stickNoBills,
        'Stint Ultra Condensed': PartS.stintUltraCondensed,
        'Stint Ultra Expanded': PartS.stintUltraExpanded,
        'Stoke': PartS.stoke,
        'Strait': PartS.strait,
        'Style Script': PartS.styleScript,
        'Stylish': PartS.stylish,
        'Sue Ellen Francisco': PartS.sueEllenFrancisco,
        'Suez One': PartS.suezOne,
        'Sulphur Point': PartS.sulphurPoint,
        'Sumana': PartS.sumana,
        'Sunflower': PartS.sunflower,
        'Sunshiney': PartS.sunshiney,
        'Supermercado One': PartS.supermercadoOne,
        'Sura': PartS.sura,
        'Suranna': PartS.suranna,
        'Suravaram': PartS.suravaram,
        'Suwannaphum': PartS.suwannaphum,
        'Swanky and Moo Moo': PartS.swankyAndMooMoo,
        'Syncopate': PartS.syncopate,
        'Syne': PartS.syne,
        'Syne Mono': PartS.syneMono,
        'Syne Tactile': PartS.syneTactile,
        'Tac One': PartT.tacOne,
        'Tai Heritage Pro': PartT.taiHeritagePro,
        'Tajawal': PartT.tajawal,
        'Tangerine': PartT.tangerine,
        'Tapestry': PartT.tapestry,
        'Taprom': PartT.taprom,
        'Tauri': PartT.tauri,
        'Taviraj': PartT.taviraj,
        'Teachers': PartT.teachers,
        'Teko': PartT.teko,
        'Tektur': PartT.tektur,
        'Telex': PartT.telex,
        'Tenali Ramakrishna': PartT.tenaliRamakrishna,
        'Tenor Sans': PartT.tenorSans,
        'Text Me One': PartT.textMeOne,
        'Texturina': PartT.texturina,
        'Thasadith': PartT.thasadith,
        'The Girl Next Door': PartT.theGirlNextDoor,
        'The Nautigal': PartT.theNautigal,
        'Tienne': PartT.tienne,
        'Tillana': PartT.tillana,
        'Tilt Neon': PartT.tiltNeon,
        'Tilt Prism': PartT.tiltPrism,
        'Tilt Warp': PartT.tiltWarp,
        'Timmana': PartT.timmana,
        'Tinos': PartT.tinos,
        'Tiny5': PartT.tiny5,
        'Tiro Bangla': PartT.tiroBangla,
        'Tiro Devanagari Hindi': PartT.tiroDevanagariHindi,
        'Tiro Devanagari Marathi': PartT.tiroDevanagariMarathi,
        'Tiro Devanagari Sanskrit': PartT.tiroDevanagariSanskrit,
        'Tiro Gurmukhi': PartT.tiroGurmukhi,
        'Tiro Kannada': PartT.tiroKannada,
        'Tiro Tamil': PartT.tiroTamil,
        'Tiro Telugu': PartT.tiroTelugu,
        'Titan One': PartT.titanOne,
        'Titillium Web': PartT.titilliumWeb,
        'Tomorrow': PartT.tomorrow,
        'Tourney': PartT.tourney,
        'Trade Winds': PartT.tradeWinds,
        'Train One': PartT.trainOne,
        'Trirong': PartT.trirong,
        'Trispace': PartT.trispace,
        'Trocchi': PartT.trocchi,
        'Trochut': PartT.trochut,
        'Truculenta': PartT.truculenta,
        'Trykker': PartT.trykker,
        'Tsukimi Rounded': PartT.tsukimiRounded,
        'Tulpen One': PartT.tulpenOne,
        'Turret Road': PartT.turretRoad,
        'Twinkle Star': PartT.twinkleStar,
        'Ubuntu': PartU.ubuntu,
        'Ubuntu Condensed': PartU.ubuntuCondensed,
        'Ubuntu Mono': PartU.ubuntuMono,
        'Ubuntu Sans': PartU.ubuntuSans,
        'Ubuntu Sans Mono': PartU.ubuntuSansMono,
        'Uchen': PartU.uchen,
        'Ultra': PartU.ultra,
        'Unbounded': PartU.unbounded,
        'Uncial Antiqua': PartU.uncialAntiqua,
        'Underdog': PartU.underdog,
        'Unica One': PartU.unicaOne,
        'UnifrakturCook': PartU.unifrakturCook,
        'UnifrakturMaguntia': PartU.unifrakturMaguntia,
        'Unkempt': PartU.unkempt,
        'Unlock': PartU.unlock,
        'Unna': PartU.unna,
        'Updock': PartU.updock,
        'Urbanist': PartU.urbanist,
        'VT323': PartV.vt323,
        'Vampiro One': PartV.vampiroOne,
        'Varela': PartV.varela,
        'Varela Round': PartV.varelaRound,
        'Varta': PartV.varta,
        'Vast Shadow': PartV.vastShadow,
        'Vazirmatn': PartV.vazirmatn,
        'Vesper Libre': PartV.vesperLibre,
        'Viaoda Libre': PartV.viaodaLibre,
        'Vibes': PartV.vibes,
        'Vibur': PartV.vibur,
        'Victor Mono': PartV.victorMono,
        'Vidaloka': PartV.vidaloka,
        'Viga': PartV.viga,
        'Vina Sans': PartV.vinaSans,
        'Voces': PartV.voces,
        'Volkhov': PartV.volkhov,
        'Vollkorn': PartV.vollkorn,
        'Vollkorn SC': PartV.vollkornSc,
        'Voltaire': PartV.voltaire,
        'Vujahday Script': PartV.vujahdayScript,
        'Waiting for the Sunrise': PartW.waitingForTheSunrise,
        'Wallpoet': PartW.wallpoet,
        'Walter Turncoat': PartW.walterTurncoat,
        'Warnes': PartW.warnes,
        'Water Brush': PartW.waterBrush,
        'Waterfall': PartW.waterfall,
        'Wavefont': PartW.wavefont,
        'Wellfleet': PartW.wellfleet,
        'Wendy One': PartW.wendyOne,
        'Whisper': PartW.whisper,
        'WindSong': PartW.windSong,
        'Wire One': PartW.wireOne,
        'Wittgenstein': PartW.wittgenstein,
        'Wix Madefor Display': PartW.wixMadeforDisplay,
        'Wix Madefor Text': PartW.wixMadeforText,
        'Work Sans': PartW.workSans,
        'Workbench': PartW.workbench,
        'Xanh Mono': PartX.xanhMono,
        'Yaldevi': PartY.yaldevi,
        'Yanone Kaffeesatz': PartY.yanoneKaffeesatz,
        'Yantramanav': PartY.yantramanav,
        'Yarndings 12': PartY.yarndings12,
        'Yarndings 12 Charted': PartY.yarndings12Charted,
        'Yarndings 20': PartY.yarndings20,
        'Yarndings 20 Charted': PartY.yarndings20Charted,
        'Yatra One': PartY.yatraOne,
        'Yellowtail': PartY.yellowtail,
        'Yeon Sung': PartY.yeonSung,
        'Yeseva One': PartY.yesevaOne,
        'Yesteryear': PartY.yesteryear,
        'Yomogi': PartY.yomogi,
        'Young Serif': PartY.youngSerif,
        'Yrsa': PartY.yrsa,
        'Ysabeau': PartY.ysabeau,
        'Ysabeau Infant': PartY.ysabeauInfant,
        'Ysabeau Office': PartY.ysabeauOffice,
        'Ysabeau SC': PartY.ysabeauSc,
        'Yuji Boku': PartY.yujiBoku,
        'Yuji Hentaigana Akari': PartY.yujiHentaiganaAkari,
        'Yuji Hentaigana Akebono': PartY.yujiHentaiganaAkebono,
        'Yuji Mai': PartY.yujiMai,
        'Yuji Syuku': PartY.yujiSyuku,
        'Yusei Magic': PartY.yuseiMagic,
        'ZCOOL KuaiLe': PartZ.zcoolKuaiLe,
        'ZCOOL QingKe HuangYou': PartZ.zcoolQingKeHuangYou,
        'ZCOOL XiaoWei': PartZ.zcoolXiaoWei,
        'Zain': PartZ.zain,
        'Zen Antique': PartZ.zenAntique,
        'Zen Antique Soft': PartZ.zenAntiqueSoft,
        'Zen Dots': PartZ.zenDots,
        'Zen Kaku Gothic Antique': PartZ.zenKakuGothicAntique,
        'Zen Kaku Gothic New': PartZ.zenKakuGothicNew,
        'Zen Kurenaido': PartZ.zenKurenaido,
        'Zen Loop': PartZ.zenLoop,
        'Zen Maru Gothic': PartZ.zenMaruGothic,
        'Zen Old Mincho': PartZ.zenOldMincho,
        'Zen Tokyo Zoo': PartZ.zenTokyoZoo,
        'Zeyada': PartZ.zeyada,
        'Zhi Mang Xing': PartZ.zhiMangXing,
        'Zilla Slab': PartZ.zillaSlab,
        'Zilla Slab Highlight': PartZ.zillaSlabHighlight,
      };

  /// Get a map of all available fonts and their associated text themes.
  ///
  /// Returns a map where the key is the name of the font family and the value
  /// is the corresponding [GoogleFonts] `TextTheme` method.

  /// Retrieve a font by family name.
  ///
  /// Applies the given font family from Google Fonts to the given [textStyle]
  /// and returns the resulting [TextStyle].
  ///
  /// Note: [fontFamily] is case-sensitive.
  ///
  /// Parameter [fontFamily] must not be `null`. Throws if no font by name
  /// [fontFamily] exists.
  static CustomTextStyle getFont(
    String fontFamily, {
    CustomTextStyle? textStyle,
    Color? color,
    Color? backgroundColor,
    double? fontSize,
    FontWeight? fontWeight,
    FontStyle? fontStyle,
    double? letterSpacing,
    double? wordSpacing,
    TextBaseline? textBaseline,
    double? height,
    Locale? locale,
    Paint? foreground,
    Paint? background,
    List<ui.Shadow>? shadows,
    List<ui.FontFeature>? fontFeatures,
    TextDecoration? decoration,
    Color? decorationColor,
    TextDecorationStyle? decorationStyle,
    double? decorationThickness,
  }) {
    final fonts = GoogleFonts.asMap();
    if (!fonts.containsKey(fontFamily)) {
      throw Exception("No font family by name '$fontFamily' was found.");
    }
    return fonts[fontFamily]!(
      textStyle: textStyle,
      color: color,
      backgroundColor: backgroundColor,
      fontSize: fontSize,
      fontWeight: fontWeight,
      fontStyle: fontStyle,
      letterSpacing: letterSpacing,
      wordSpacing: wordSpacing,
      textBaseline: textBaseline,
      height: height,
      locale: locale,
      foreground: foreground,
      background: background,
      shadows: shadows,
      fontFeatures: fontFeatures,
      decoration: decoration,
      decorationColor: decorationColor,
      decorationStyle: decorationStyle,
      decorationThickness: decorationThickness,
    );
  }

  static const aBeeZee = PartA.aBeeZee;
  static const aDLaMDisplay = PartA.aDLaMDisplay;
  static const arOneSans = PartA.arOneSans;
  static const abel = PartA.abel;
  static const abhayaLibre = PartA.abhayaLibre;
  static const aboreto = PartA.aboreto;
  static const abrilFatface = PartA.abrilFatface;
  static const abyssinicaSil = PartA.abyssinicaSil;
  static const aclonica = PartA.aclonica;
  static const acme = PartA.acme;
  static const actor = PartA.actor;
  static const adamina = PartA.adamina;
  static const adventPro = PartA.adventPro;
  static const afacad = PartA.afacad;
  static const agbalumo = PartA.agbalumo;
  static const agdasima = PartA.agdasima;
  static const aguafinaScript = PartA.aguafinaScript;
  static const akatab = PartA.akatab;
  static const akayaKanadaka = PartA.akayaKanadaka;
  static const akayaTelivigala = PartA.akayaTelivigala;
  static const akronim = PartA.akronim;
  static const akshar = PartA.akshar;
  static const aladin = PartA.aladin;
  static const alata = PartA.alata;
  static const alatsi = PartA.alatsi;
  static const albertSans = PartA.albertSans;
  static const aldrich = PartA.aldrich;
  static const alef = PartA.alef;
  static const alegreya = PartA.alegreya;
  static const alegreyaSc = PartA.alegreyaSc;
  static const alegreyaSans = PartA.alegreyaSans;
  static const alegreyaSansSc = PartA.alegreyaSansSc;
  static const aleo = PartA.aleo;
  static const alexBrush = PartA.alexBrush;
  static const alexandria = PartA.alexandria;
  static const alfaSlabOne = PartA.alfaSlabOne;
  static const alice = PartA.alice;
  static const alike = PartA.alike;
  static const alikeAngular = PartA.alikeAngular;
  static const alkalami = PartA.alkalami;
  static const alkatra = PartA.alkatra;
  static const allan = PartA.allan;
  static const allerta = PartA.allerta;
  static const allertaStencil = PartA.allertaStencil;
  static const allison = PartA.allison;
  static const allura = PartA.allura;
  static const almarai = PartA.almarai;
  static const almendra = PartA.almendra;
  static const almendraDisplay = PartA.almendraDisplay;
  static const almendraSc = PartA.almendraSc;
  static const alumniSans = PartA.alumniSans;
  static const alumniSansCollegiateOne = PartA.alumniSansCollegiateOne;
  static const alumniSansInlineOne = PartA.alumniSansInlineOne;
  static const alumniSansPinstripe = PartA.alumniSansPinstripe;
  static const amarante = PartA.amarante;
  static const amaranth = PartA.amaranth;
  static const amaticSc = PartA.amaticSc;
  static const amethysta = PartA.amethysta;
  static const amiko = PartA.amiko;
  static const amiri = PartA.amiri;
  static const amiriQuran = PartA.amiriQuran;
  static const amita = PartA.amita;
  static const anaheim = PartA.anaheim;
  static const andadaPro = PartA.andadaPro;
  static const andika = PartA.andika;
  static const anekBangla = PartA.anekBangla;
  static const anekDevanagari = PartA.anekDevanagari;
  static const anekGujarati = PartA.anekGujarati;
  static const anekGurmukhi = PartA.anekGurmukhi;
  static const anekKannada = PartA.anekKannada;
  static const anekLatin = PartA.anekLatin;
  static const anekMalayalam = PartA.anekMalayalam;
  static const anekOdia = PartA.anekOdia;
  static const anekTamil = PartA.anekTamil;
  static const anekTelugu = PartA.anekTelugu;
  static const angkor = PartA.angkor;
  static const annapurnaSil = PartA.annapurnaSil;
  static const annieUseYourTelescope = PartA.annieUseYourTelescope;
  static const anonymousPro = PartA.anonymousPro;
  static const anta = PartA.anta;
  static const antic = PartA.antic;
  static const anticDidone = PartA.anticDidone;
  static const anticSlab = PartA.anticSlab;
  static const anton = PartA.anton;
  static const antonSc = PartA.antonSc;
  static const antonio = PartA.antonio;
  static const anuphan = PartA.anuphan;
  static const anybody = PartA.anybody;
  static const aoboshiOne = PartA.aoboshiOne;
  static const arapey = PartA.arapey;
  static const arbutus = PartA.arbutus;
  static const arbutusSlab = PartA.arbutusSlab;
  static const architectsDaughter = PartA.architectsDaughter;
  static const archivo = PartA.archivo;
  static const archivoBlack = PartA.archivoBlack;
  static const archivoNarrow = PartA.archivoNarrow;
  static const areYouSerious = PartA.areYouSerious;
  static const arefRuqaa = PartA.arefRuqaa;
  static const arefRuqaaInk = PartA.arefRuqaaInk;
  static const arima = PartA.arima;
  static const arimo = PartA.arimo;
  static const arizonia = PartA.arizonia;
  static const armata = PartA.armata;
  static const arsenal = PartA.arsenal;
  static const arsenalSc = PartA.arsenalSc;
  static const artifika = PartA.artifika;
  static const arvo = PartA.arvo;
  static const arya = PartA.arya;
  static const asap = PartA.asap;
  static const asapCondensed = PartA.asapCondensed;
  static const asar = PartA.asar;
  static const asset = PartA.asset;
  static const assistant = PartA.assistant;
  static const astloch = PartA.astloch;
  static const asul = PartA.asul;
  static const athiti = PartA.athiti;
  static const atkinsonHyperlegible = PartA.atkinsonHyperlegible;
  static const atma = PartA.atma;
  static const atomicAge = PartA.atomicAge;
  static const aubrey = PartA.aubrey;
  static const audiowide = PartA.audiowide;
  static const autourOne = PartA.autourOne;
  static const average = PartA.average;
  static const averageSans = PartA.averageSans;
  static const averiaGruesaLibre = PartA.averiaGruesaLibre;
  static const averiaLibre = PartA.averiaLibre;
  static const averiaSansLibre = PartA.averiaSansLibre;
  static const averiaSerifLibre = PartA.averiaSerifLibre;
  static const azeretMono = PartA.azeretMono;
  static const b612 = PartB.b612;
  static const b612Mono = PartB.b612Mono;
  static const bizUDGothic = PartB.bizUDGothic;
  static const bizUDMincho = PartB.bizUDMincho;
  static const bizUDPGothic = PartB.bizUDPGothic;
  static const bizUDPMincho = PartB.bizUDPMincho;
  static const babylonica = PartB.babylonica;
  static const bacasimeAntique = PartB.bacasimeAntique;
  static const badScript = PartB.badScript;
  static const bagelFatOne = PartB.bagelFatOne;
  static const bahiana = PartB.bahiana;
  static const bahianita = PartB.bahianita;
  static const baiJamjuree = PartB.baiJamjuree;
  static const bakbakOne = PartB.bakbakOne;
  static const ballet = PartB.ballet;
  static const baloo2 = PartB.baloo2;
  static const balooBhai2 = PartB.balooBhai2;
  static const balooBhaijaan2 = PartB.balooBhaijaan2;
  static const balooBhaina2 = PartB.balooBhaina2;
  static const balooChettan2 = PartB.balooChettan2;
  static const balooDa2 = PartB.balooDa2;
  static const balooPaaji2 = PartB.balooPaaji2;
  static const balooTamma2 = PartB.balooTamma2;
  static const balooTammudu2 = PartB.balooTammudu2;
  static const balooThambi2 = PartB.balooThambi2;
  static const balsamiqSans = PartB.balsamiqSans;
  static const balthazar = PartB.balthazar;
  static const bangers = PartB.bangers;
  static const barlow = PartB.barlow;
  static const barlowCondensed = PartB.barlowCondensed;
  static const barlowSemiCondensed = PartB.barlowSemiCondensed;
  static const barriecito = PartB.barriecito;
  static const barrio = PartB.barrio;
  static const basic = PartB.basic;
  static const baskervville = PartB.baskervville;
  static const baskervvilleSc = PartB.baskervvilleSc;
  static const battambang = PartB.battambang;
  static const baumans = PartB.baumans;
  static const bayon = PartB.bayon;
  static const beVietnamPro = PartB.beVietnamPro;
  static const beauRivage = PartB.beauRivage;
  static const bebasNeue = PartB.bebasNeue;
  static const beiruti = PartB.beiruti;
  static const belanosima = PartB.belanosima;
  static const belgrano = PartB.belgrano;
  static const bellefair = PartB.bellefair;
  static const belleza = PartB.belleza;
  static const bellota = PartB.bellota;
  static const bellotaText = PartB.bellotaText;
  static const benchNine = PartB.benchNine;
  static const benne = PartB.benne;
  static const bentham = PartB.bentham;
  static const berkshireSwash = PartB.berkshireSwash;
  static const besley = PartB.besley;
  static const bethEllen = PartB.bethEllen;
  static const bevan = PartB.bevan;
  static const bhuTukaExpandedOne = PartB.bhuTukaExpandedOne;
  static const bigShouldersDisplay = PartB.bigShouldersDisplay;
  static const bigShouldersInlineDisplay = PartB.bigShouldersInlineDisplay;
  static const bigShouldersInlineText = PartB.bigShouldersInlineText;
  static const bigShouldersStencilDisplay = PartB.bigShouldersStencilDisplay;
  static const bigShouldersStencilText = PartB.bigShouldersStencilText;
  static const bigShouldersText = PartB.bigShouldersText;
  static const bigelowRules = PartB.bigelowRules;
  static const bigshotOne = PartB.bigshotOne;
  static const bilbo = PartB.bilbo;
  static const bilboSwashCaps = PartB.bilboSwashCaps;
  static const bioRhyme = PartB.bioRhyme;
  static const bioRhymeExpanded = PartB.bioRhymeExpanded;
  static const birthstone = PartB.birthstone;
  static const birthstoneBounce = PartB.birthstoneBounce;
  static const biryani = PartB.biryani;
  static const bitter = PartB.bitter;
  static const blackAndWhitePicture = PartB.blackAndWhitePicture;
  static const blackHanSans = PartB.blackHanSans;
  static const blackOpsOne = PartB.blackOpsOne;
  static const blaka = PartB.blaka;
  static const blakaHollow = PartB.blakaHollow;
  static const blakaInk = PartB.blakaInk;
  static const blinker = PartB.blinker;
  static const bodoniModa = PartB.bodoniModa;
  static const bodoniModaSc = PartB.bodoniModaSc;
  static const bokor = PartB.bokor;
  static const bonaNova = PartB.bonaNova;
  static const bonaNovaSc = PartB.bonaNovaSc;
  static const bonbon = PartB.bonbon;
  static const bonheurRoyale = PartB.bonheurRoyale;
  static const boogaloo = PartB.boogaloo;
  static const borel = PartB.borel;
  static const bowlbyOne = PartB.bowlbyOne;
  static const bowlbyOneSc = PartB.bowlbyOneSc;
  static const braahOne = PartB.braahOne;
  static const brawler = PartB.brawler;
  static const breeSerif = PartB.breeSerif;
  static const bricolageGrotesque = PartB.bricolageGrotesque;
  static const brunoAce = PartB.brunoAce;
  static const brunoAceSc = PartB.brunoAceSc;
  static const brygada1918 = PartB.brygada1918;
  static const bubblegumSans = PartB.bubblegumSans;
  static const bubblerOne = PartB.bubblerOne;
  static const buda = PartB.buda;
  static const buenard = PartB.buenard;
  static const bungee = PartB.bungee;
  static const bungeeHairline = PartB.bungeeHairline;
  static const bungeeInline = PartB.bungeeInline;
  static const bungeeOutline = PartB.bungeeOutline;
  static const bungeeShade = PartB.bungeeShade;
  static const bungeeSpice = PartB.bungeeSpice;
  static const butcherman = PartB.butcherman;
  static const butterflyKids = PartB.butterflyKids;
  static const cabin = PartC.cabin;
  static const cabinCondensed = PartC.cabinCondensed;
  static const cabinSketch = PartC.cabinSketch;
  static const cactusClassicalSerif = PartC.cactusClassicalSerif;
  static const caesarDressing = PartC.caesarDressing;
  static const cagliostro = PartC.cagliostro;
  static const cairo = PartC.cairo;
  static const cairoPlay = PartC.cairoPlay;
  static const caladea = PartC.caladea;
  static const calistoga = PartC.calistoga;
  static const calligraffitti = PartC.calligraffitti;
  static const cambay = PartC.cambay;
  static const cambo = PartC.cambo;
  static const candal = PartC.candal;
  static const cantarell = PartC.cantarell;
  static const cantataOne = PartC.cantataOne;
  static const cantoraOne = PartC.cantoraOne;
  static const caprasimo = PartC.caprasimo;
  static const capriola = PartC.capriola;
  static const caramel = PartC.caramel;
  static const carattere = PartC.carattere;
  static const cardo = PartC.cardo;
  static const carlito = PartC.carlito;
  static const carme = PartC.carme;
  static const carroisGothic = PartC.carroisGothic;
  static const carroisGothicSc = PartC.carroisGothicSc;
  static const carterOne = PartC.carterOne;
  static const castoro = PartC.castoro;
  static const castoroTitling = PartC.castoroTitling;
  static const catamaran = PartC.catamaran;
  static const caudex = PartC.caudex;
  static const caveat = PartC.caveat;
  static const caveatBrush = PartC.caveatBrush;
  static const cedarvilleCursive = PartC.cedarvilleCursive;
  static const cevicheOne = PartC.cevicheOne;
  static const chakraPetch = PartC.chakraPetch;
  static const changa = PartC.changa;
  static const changaOne = PartC.changaOne;
  static const chango = PartC.chango;
  static const charisSil = PartC.charisSil;
  static const charm = PartC.charm;
  static const charmonman = PartC.charmonman;
  static const chathura = PartC.chathura;
  static const chauPhilomeneOne = PartC.chauPhilomeneOne;
  static const chelaOne = PartC.chelaOne;
  static const chelseaMarket = PartC.chelseaMarket;
  static const chenla = PartC.chenla;
  static const cherish = PartC.cherish;
  static const cherryBombOne = PartC.cherryBombOne;
  static const cherryCreamSoda = PartC.cherryCreamSoda;
  static const cherrySwash = PartC.cherrySwash;
  static const chewy = PartC.chewy;
  static const chicle = PartC.chicle;
  static const chilanka = PartC.chilanka;
  static const chivo = PartC.chivo;
  static const chivoMono = PartC.chivoMono;
  static const chocolateClassicalSans = PartC.chocolateClassicalSans;
  static const chokokutai = PartC.chokokutai;
  static const chonburi = PartC.chonburi;
  static const cinzel = PartC.cinzel;
  static const cinzelDecorative = PartC.cinzelDecorative;
  static const clickerScript = PartC.clickerScript;
  static const climateCrisis = PartC.climateCrisis;
  static const coda = PartC.coda;
  static const codystar = PartC.codystar;
  static const coiny = PartC.coiny;
  static const combo = PartC.combo;
  static const comfortaa = PartC.comfortaa;
  static const comforter = PartC.comforter;
  static const comforterBrush = PartC.comforterBrush;
  static const comicNeue = PartC.comicNeue;
  static const comingSoon = PartC.comingSoon;
  static const comme = PartC.comme;
  static const commissioner = PartC.commissioner;
  static const concertOne = PartC.concertOne;
  static const condiment = PartC.condiment;
  static const content = PartC.content;
  static const contrailOne = PartC.contrailOne;
  static const convergence = PartC.convergence;
  static const cookie = PartC.cookie;
  static const copse = PartC.copse;
  static const corben = PartC.corben;
  static const corinthia = PartC.corinthia;
  static const cormorant = PartC.cormorant;
  static const cormorantGaramond = PartC.cormorantGaramond;
  static const cormorantInfant = PartC.cormorantInfant;
  static const cormorantSc = PartC.cormorantSc;
  static const cormorantUnicase = PartC.cormorantUnicase;
  static const cormorantUpright = PartC.cormorantUpright;
  static const courgette = PartC.courgette;
  static const courierPrime = PartC.courierPrime;
  static const cousine = PartC.cousine;
  static const coustard = PartC.coustard;
  static const coveredByYourGrace = PartC.coveredByYourGrace;
  static const craftyGirls = PartC.craftyGirls;
  static const creepster = PartC.creepster;
  static const creteRound = PartC.creteRound;
  static const crimsonPro = PartC.crimsonPro;
  static const crimsonText = PartC.crimsonText;
  static const croissantOne = PartC.croissantOne;
  static const crushed = PartC.crushed;
  static const cuprum = PartC.cuprum;
  static const cuteFont = PartC.cuteFont;
  static const cutive = PartC.cutive;
  static const cutiveMono = PartC.cutiveMono;
  static const dmMono = PartD.dmMono;
  static const dmSans = PartD.dmSans;
  static const dmSerifDisplay = PartD.dmSerifDisplay;
  static const dmSerifText = PartD.dmSerifText;
  static const daiBannaSil = PartD.daiBannaSil;
  static const damion = PartD.damion;
  static const dancingScript = PartD.dancingScript;
  static const danfo = PartD.danfo;
  static const dangrek = PartD.dangrek;
  static const darkerGrotesque = PartD.darkerGrotesque;
  static const darumadropOne = PartD.darumadropOne;
  static const davidLibre = PartD.davidLibre;
  static const dawningOfANewDay = PartD.dawningOfANewDay;
  static const daysOne = PartD.daysOne;
  static const dekko = PartD.dekko;
  static const delaGothicOne = PartD.delaGothicOne;
  static const deliciousHandrawn = PartD.deliciousHandrawn;
  static const delius = PartD.delius;
  static const deliusSwashCaps = PartD.deliusSwashCaps;
  static const deliusUnicase = PartD.deliusUnicase;
  static const dellaRespira = PartD.dellaRespira;
  static const denkOne = PartD.denkOne;
  static const devonshire = PartD.devonshire;
  static const dhurjati = PartD.dhurjati;
  static const didactGothic = PartD.didactGothic;
  static const diphylleia = PartD.diphylleia;
  static const diplomata = PartD.diplomata;
  static const diplomataSc = PartD.diplomataSc;
  static const doHyeon = PartD.doHyeon;
  static const dokdo = PartD.dokdo;
  static const domine = PartD.domine;
  static const donegalOne = PartD.donegalOne;
  static const dongle = PartD.dongle;
  static const doppioOne = PartD.doppioOne;
  static const dorsa = PartD.dorsa;
  static const dosis = PartD.dosis;
  static const dotGothic16 = PartD.dotGothic16;
  static const drSugiyama = PartD.drSugiyama;
  static const duruSans = PartD.duruSans;
  static const dynaPuff = PartD.dynaPuff;
  static const dynalight = PartD.dynalight;
  static const ebGaramond = PartE.ebGaramond;
  static const eagleLake = PartE.eagleLake;
  static const eastSeaDokdo = PartE.eastSeaDokdo;
  static const eater = PartE.eater;
  static const economica = PartE.economica;
  static const eczar = PartE.eczar;
  static const eduAuVicWaNtHand = PartE.eduAuVicWaNtHand;
  static const eduNswActFoundation = PartE.eduNswActFoundation;
  static const eduQldBeginner = PartE.eduQldBeginner;
  static const eduSaBeginner = PartE.eduSaBeginner;
  static const eduTasBeginner = PartE.eduTasBeginner;
  static const eduVicWaNtBeginner = PartE.eduVicWaNtBeginner;
  static const elMessiri = PartE.elMessiri;
  static const electrolize = PartE.electrolize;
  static const elsie = PartE.elsie;
  static const elsieSwashCaps = PartE.elsieSwashCaps;
  static const emblemaOne = PartE.emblemaOne;
  static const emilysCandy = PartE.emilysCandy;
  static const encodeSans = PartE.encodeSans;
  static const encodeSansCondensed = PartE.encodeSansCondensed;
  static const encodeSansExpanded = PartE.encodeSansExpanded;
  static const encodeSansSc = PartE.encodeSansSc;
  static const encodeSansSemiCondensed = PartE.encodeSansSemiCondensed;
  static const encodeSansSemiExpanded = PartE.encodeSansSemiExpanded;
  static const engagement = PartE.engagement;
  static const englebert = PartE.englebert;
  static const enriqueta = PartE.enriqueta;
  static const ephesis = PartE.ephesis;
  static const epilogue = PartE.epilogue;
  static const ericaOne = PartE.ericaOne;
  static const esteban = PartE.esteban;
  static const estonia = PartE.estonia;
  static const euphoriaScript = PartE.euphoriaScript;
  static const ewert = PartE.ewert;
  static const exo = PartE.exo;
  static const exo2 = PartE.exo2;
  static const expletusSans = PartE.expletusSans;
  static const explora = PartE.explora;
  static const fahkwang = PartF.fahkwang;
  static const familjenGrotesk = PartF.familjenGrotesk;
  static const fanwoodText = PartF.fanwoodText;
  static const farro = PartF.farro;
  static const farsan = PartF.farsan;
  static const fascinate = PartF.fascinate;
  static const fascinateInline = PartF.fascinateInline;
  static const fasterOne = PartF.fasterOne;
  static const fasthand = PartF.fasthand;
  static const faunaOne = PartF.faunaOne;
  static const faustina = PartF.faustina;
  static const federant = PartF.federant;
  static const federo = PartF.federo;
  static const felipa = PartF.felipa;
  static const fenix = PartF.fenix;
  static const festive = PartF.festive;
  static const figtree = PartF.figtree;
  static const fingerPaint = PartF.fingerPaint;
  static const finlandica = PartF.finlandica;
  static const firaCode = PartF.firaCode;
  static const firaMono = PartF.firaMono;
  static const firaSans = PartF.firaSans;
  static const firaSansCondensed = PartF.firaSansCondensed;
  static const firaSansExtraCondensed = PartF.firaSansExtraCondensed;
  static const fjallaOne = PartF.fjallaOne;
  static const fjordOne = PartF.fjordOne;
  static const flamenco = PartF.flamenco;
  static const flavors = PartF.flavors;
  static const fleurDeLeah = PartF.fleurDeLeah;
  static const flowBlock = PartF.flowBlock;
  static const flowCircular = PartF.flowCircular;
  static const flowRounded = PartF.flowRounded;
  static const foldit = PartF.foldit;
  static const fondamento = PartF.fondamento;
  static const fontdinerSwanky = PartF.fontdinerSwanky;
  static const forum = PartF.forum;
  static const fragmentMono = PartF.fragmentMono;
  static const francoisOne = PartF.francoisOne;
  static const frankRuhlLibre = PartF.frankRuhlLibre;
  static const fraunces = PartF.fraunces;
  static const freckleFace = PartF.freckleFace;
  static const frederickaTheGreat = PartF.frederickaTheGreat;
  static const fredoka = PartF.fredoka;
  static const freehand = PartF.freehand;
  static const freeman = PartF.freeman;
  static const fresca = PartF.fresca;
  static const frijole = PartF.frijole;
  static const fruktur = PartF.fruktur;
  static const fugazOne = PartF.fugazOne;
  static const fuggles = PartF.fuggles;
  static const fustat = PartF.fustat;
  static const fuzzyBubbles = PartF.fuzzyBubbles;
  static const gfsDidot = PartG.gfsDidot;
  static const gfsNeohellenic = PartG.gfsNeohellenic;
  static const gaMaamli = PartG.gaMaamli;
  static const gabarito = PartG.gabarito;
  static const gabriela = PartG.gabriela;
  static const gaegu = PartG.gaegu;
  static const gafata = PartG.gafata;
  static const gajrajOne = PartG.gajrajOne;
  static const galada = PartG.galada;
  static const galdeano = PartG.galdeano;
  static const galindo = PartG.galindo;
  static const gamjaFlower = PartG.gamjaFlower;
  static const gantari = PartG.gantari;
  static const gasoekOne = PartG.gasoekOne;
  static const gayathri = PartG.gayathri;
  static const gelasio = PartG.gelasio;
  static const gemunuLibre = PartG.gemunuLibre;
  static const genos = PartG.genos;
  static const gentiumBookPlus = PartG.gentiumBookPlus;
  static const gentiumPlus = PartG.gentiumPlus;
  static const geo = PartG.geo;
  static const geologica = PartG.geologica;
  static const georama = PartG.georama;
  static const geostar = PartG.geostar;
  static const geostarFill = PartG.geostarFill;
  static const germaniaOne = PartG.germaniaOne;
  static const gideonRoman = PartG.gideonRoman;
  static const gidugu = PartG.gidugu;
  static const gildaDisplay = PartG.gildaDisplay;
  static const girassol = PartG.girassol;
  static const giveYouGlory = PartG.giveYouGlory;
  static const glassAntiqua = PartG.glassAntiqua;
  static const glegoo = PartG.glegoo;
  static const gloock = PartG.gloock;
  static const gloriaHallelujah = PartG.gloriaHallelujah;
  static const glory = PartG.glory;
  static const gluten = PartG.gluten;
  static const goblinOne = PartG.goblinOne;
  static const gochiHand = PartG.gochiHand;
  static const goldman = PartG.goldman;
  static const golosText = PartG.golosText;
  static const gorditas = PartG.gorditas;
  static const gothicA1 = PartG.gothicA1;
  static const gotu = PartG.gotu;
  static const goudyBookletter1911 = PartG.goudyBookletter1911;
  static const gowunBatang = PartG.gowunBatang;
  static const gowunDodum = PartG.gowunDodum;
  static const graduate = PartG.graduate;
  static const grandHotel = PartG.grandHotel;
  static const grandifloraOne = PartG.grandifloraOne;
  static const grandstander = PartG.grandstander;
  static const grapeNuts = PartG.grapeNuts;
  static const gravitasOne = PartG.gravitasOne;
  static const greatVibes = PartG.greatVibes;
  static const grechenFuemen = PartG.grechenFuemen;
  static const grenze = PartG.grenze;
  static const grenzeGotisch = PartG.grenzeGotisch;
  static const greyQo = PartG.greyQo;
  static const griffy = PartG.griffy;
  static const gruppo = PartG.gruppo;
  static const gudea = PartG.gudea;
  static const gugi = PartG.gugi;
  static const gulzar = PartG.gulzar;
  static const gupter = PartG.gupter;
  static const gurajada = PartG.gurajada;
  static const gwendolyn = PartG.gwendolyn;
  static const habibi = PartH.habibi;
  static const hachiMaruPop = PartH.hachiMaruPop;
  static const hahmlet = PartH.hahmlet;
  static const halant = PartH.halant;
  static const hammersmithOne = PartH.hammersmithOne;
  static const hanalei = PartH.hanalei;
  static const hanaleiFill = PartH.hanaleiFill;
  static const handjet = PartH.handjet;
  static const handlee = PartH.handlee;
  static const hankenGrotesk = PartH.hankenGrotesk;
  static const hanuman = PartH.hanuman;
  static const happyMonkey = PartH.happyMonkey;
  static const harmattan = PartH.harmattan;
  static const headlandOne = PartH.headlandOne;
  static const hedvigLettersSans = PartH.hedvigLettersSans;
  static const hedvigLettersSerif = PartH.hedvigLettersSerif;
  static const heebo = PartH.heebo;
  static const hennyPenny = PartH.hennyPenny;
  static const heptaSlab = PartH.heptaSlab;
  static const herrVonMuellerhoff = PartH.herrVonMuellerhoff;
  static const hiMelody = PartH.hiMelody;
  static const hinaMincho = PartH.hinaMincho;
  static const hind = PartH.hind;
  static const hindGuntur = PartH.hindGuntur;
  static const hindMadurai = PartH.hindMadurai;
  static const hindSiliguri = PartH.hindSiliguri;
  static const hindVadodara = PartH.hindVadodara;
  static const holtwoodOneSc = PartH.holtwoodOneSc;
  static const homemadeApple = PartH.homemadeApple;
  static const homenaje = PartH.homenaje;
  static const honk = PartH.honk;
  static const hubballi = PartH.hubballi;
  static const hurricane = PartH.hurricane;
  static const ibmPlexMono = PartI.ibmPlexMono;
  static const ibmPlexSans = PartI.ibmPlexSans;
  static const ibmPlexSansArabic = PartI.ibmPlexSansArabic;
  static const ibmPlexSansCondensed = PartI.ibmPlexSansCondensed;
  static const ibmPlexSansDevanagari = PartI.ibmPlexSansDevanagari;
  static const ibmPlexSansHebrew = PartI.ibmPlexSansHebrew;
  static const ibmPlexSansJp = PartI.ibmPlexSansJp;
  static const ibmPlexSansKr = PartI.ibmPlexSansKr;
  static const ibmPlexSansThai = PartI.ibmPlexSansThai;
  static const ibmPlexSansThaiLooped = PartI.ibmPlexSansThaiLooped;
  static const ibmPlexSerif = PartI.ibmPlexSerif;
  static const imFellDwPica = PartI.imFellDwPica;
  static const imFellDwPicaSc = PartI.imFellDwPicaSc;
  static const imFellDoublePica = PartI.imFellDoublePica;
  static const imFellDoublePicaSc = PartI.imFellDoublePicaSc;
  static const imFellEnglish = PartI.imFellEnglish;
  static const imFellEnglishSc = PartI.imFellEnglishSc;
  static const imFellFrenchCanon = PartI.imFellFrenchCanon;
  static const imFellFrenchCanonSc = PartI.imFellFrenchCanonSc;
  static const imFellGreatPrimer = PartI.imFellGreatPrimer;
  static const imFellGreatPrimerSc = PartI.imFellGreatPrimerSc;
  static const ibarraRealNova = PartI.ibarraRealNova;
  static const iceberg = PartI.iceberg;
  static const iceland = PartI.iceland;
  static const imbue = PartI.imbue;
  static const imperialScript = PartI.imperialScript;
  static const imprima = PartI.imprima;
  static const inclusiveSans = PartI.inclusiveSans;
  static const inconsolata = PartI.inconsolata;
  static const inder = PartI.inder;
  static const indieFlower = PartI.indieFlower;
  static const ingridDarling = PartI.ingridDarling;
  static const inika = PartI.inika;
  static const inknutAntiqua = PartI.inknutAntiqua;
  static const inriaSans = PartI.inriaSans;
  static const inriaSerif = PartI.inriaSerif;
  static const inspiration = PartI.inspiration;
  static const instrumentSans = PartI.instrumentSans;
  static const instrumentSerif = PartI.instrumentSerif;
  static const inter = PartI.inter;
  static const interTight = PartI.interTight;
  static const irishGrover = PartI.irishGrover;
  static const islandMoments = PartI.islandMoments;
  static const istokWeb = PartI.istokWeb;
  static const italiana = PartI.italiana;
  static const italianno = PartI.italianno;
  static const itim = PartI.itim;
  static const jacquard12 = PartJ.jacquard12;
  static const jacquard12Charted = PartJ.jacquard12Charted;
  static const jacquard24 = PartJ.jacquard24;
  static const jacquard24Charted = PartJ.jacquard24Charted;
  static const jacquardaBastarda9 = PartJ.jacquardaBastarda9;
  static const jacquardaBastarda9Charted = PartJ.jacquardaBastarda9Charted;
  static const jacquesFrancois = PartJ.jacquesFrancois;
  static const jacquesFrancoisShadow = PartJ.jacquesFrancoisShadow;
  static const jaini = PartJ.jaini;
  static const jainiPurva = PartJ.jainiPurva;
  static const jaldi = PartJ.jaldi;
  static const jaro = PartJ.jaro;
  static const jersey10 = PartJ.jersey10;
  static const jersey10Charted = PartJ.jersey10Charted;
  static const jersey15 = PartJ.jersey15;
  static const jersey15Charted = PartJ.jersey15Charted;
  static const jersey20 = PartJ.jersey20;
  static const jersey20Charted = PartJ.jersey20Charted;
  static const jersey25 = PartJ.jersey25;
  static const jersey25Charted = PartJ.jersey25Charted;
  static const jetBrainsMono = PartJ.jetBrainsMono;
  static const jimNightshade = PartJ.jimNightshade;
  static const joan = PartJ.joan;
  static const jockeyOne = PartJ.jockeyOne;
  static const jollyLodger = PartJ.jollyLodger;
  static const jomhuria = PartJ.jomhuria;
  static const jomolhari = PartJ.jomolhari;
  static const josefinSans = PartJ.josefinSans;
  static const josefinSlab = PartJ.josefinSlab;
  static const jost = PartJ.jost;
  static const jotiOne = PartJ.jotiOne;
  static const jua = PartJ.jua;
  static const judson = PartJ.judson;
  static const julee = PartJ.julee;
  static const juliusSansOne = PartJ.juliusSansOne;
  static const junge = PartJ.junge;
  static const jura = PartJ.jura;
  static const justAnotherHand = PartJ.justAnotherHand;
  static const justMeAgainDownHere = PartJ.justMeAgainDownHere;
  static const k2d = PartK.k2d;
  static const kablammo = PartK.kablammo;
  static const kadwa = PartK.kadwa;
  static const kaiseiDecol = PartK.kaiseiDecol;
  static const kaiseiHarunoUmi = PartK.kaiseiHarunoUmi;
  static const kaiseiOpti = PartK.kaiseiOpti;
  static const kaiseiTokumin = PartK.kaiseiTokumin;
  static const kalam = PartK.kalam;
  static const kalnia = PartK.kalnia;
  static const kalniaGlaze = PartK.kalniaGlaze;
  static const kameron = PartK.kameron;
  static const kanit = PartK.kanit;
  static const kantumruyPro = PartK.kantumruyPro;
  static const karantina = PartK.karantina;
  static const karla = PartK.karla;
  static const karma = PartK.karma;
  static const katibeh = PartK.katibeh;
  static const kaushanScript = PartK.kaushanScript;
  static const kavivanar = PartK.kavivanar;
  static const kavoon = PartK.kavoon;
  static const kayPhoDu = PartK.kayPhoDu;
  static const kdamThmorPro = PartK.kdamThmorPro;
  static const keaniaOne = PartK.keaniaOne;
  static const kellySlab = PartK.kellySlab;
  static const kenia = PartK.kenia;
  static const khand = PartK.khand;
  static const khmer = PartK.khmer;
  static const khula = PartK.khula;
  static const kings = PartK.kings;
  static const kirangHaerang = PartK.kirangHaerang;
  static const kiteOne = PartK.kiteOne;
  static const kiwiMaru = PartK.kiwiMaru;
  static const kleeOne = PartK.kleeOne;
  static const knewave = PartK.knewave;
  static const koHo = PartK.koHo;
  static const kodchasan = PartK.kodchasan;
  static const kodeMono = PartK.kodeMono;
  static const kohSantepheap = PartK.kohSantepheap;
  static const kolkerBrush = PartK.kolkerBrush;
  static const konkhmerSleokchher = PartK.konkhmerSleokchher;
  static const kosugi = PartK.kosugi;
  static const kosugiMaru = PartK.kosugiMaru;
  static const kottaOne = PartK.kottaOne;
  static const koulen = PartK.koulen;
  static const kranky = PartK.kranky;
  static const kreon = PartK.kreon;
  static const kristi = PartK.kristi;
  static const kronaOne = PartK.kronaOne;
  static const krub = PartK.krub;
  static const kufam = PartK.kufam;
  static const kulimPark = PartK.kulimPark;
  static const kumarOne = PartK.kumarOne;
  static const kumarOneOutline = PartK.kumarOneOutline;
  static const kumbhSans = PartK.kumbhSans;
  static const kurale = PartK.kurale;
  static const lxgwWenKaiMonoTc = PartL.lxgwWenKaiMonoTc;
  static const lxgwWenKaiTc = PartL.lxgwWenKaiTc;
  static const laBelleAurore = PartL.laBelleAurore;
  static const labrada = PartL.labrada;
  static const lacquer = PartL.lacquer;
  static const laila = PartL.laila;
  static const lakkiReddy = PartL.lakkiReddy;
  static const lalezar = PartL.lalezar;
  static const lancelot = PartL.lancelot;
  static const langar = PartL.langar;
  static const lateef = PartL.lateef;
  static const lato = PartL.lato;
  static const lavishlyYours = PartL.lavishlyYours;
  static const leagueGothic = PartL.leagueGothic;
  static const leagueScript = PartL.leagueScript;
  static const leagueSpartan = PartL.leagueSpartan;
  static const leckerliOne = PartL.leckerliOne;
  static const ledger = PartL.ledger;
  static const lekton = PartL.lekton;
  static const lemon = PartL.lemon;
  static const lemonada = PartL.lemonada;
  static const lexend = PartL.lexend;
  static const lexendDeca = PartL.lexendDeca;
  static const lexendExa = PartL.lexendExa;
  static const lexendGiga = PartL.lexendGiga;
  static const lexendMega = PartL.lexendMega;
  static const lexendPeta = PartL.lexendPeta;
  static const lexendTera = PartL.lexendTera;
  static const lexendZetta = PartL.lexendZetta;
  static const libreBarcode128 = PartL.libreBarcode128;
  static const libreBarcode128Text = PartL.libreBarcode128Text;
  static const libreBarcode39 = PartL.libreBarcode39;
  static const libreBarcode39Extended = PartL.libreBarcode39Extended;
  static const libreBarcode39ExtendedText = PartL.libreBarcode39ExtendedText;
  static const libreBarcode39Text = PartL.libreBarcode39Text;
  static const libreBarcodeEan13Text = PartL.libreBarcodeEan13Text;
  static const libreBaskerville = PartL.libreBaskerville;
  static const libreBodoni = PartL.libreBodoni;
  static const libreCaslonDisplay = PartL.libreCaslonDisplay;
  static const libreCaslonText = PartL.libreCaslonText;
  static const libreFranklin = PartL.libreFranklin;
  static const licorice = PartL.licorice;
  static const lifeSavers = PartL.lifeSavers;
  static const lilitaOne = PartL.lilitaOne;
  static const lilyScriptOne = PartL.lilyScriptOne;
  static const limelight = PartL.limelight;
  static const lindenHill = PartL.lindenHill;
  static const linefont = PartL.linefont;
  static const lisuBosa = PartL.lisuBosa;
  static const literata = PartL.literata;
  static const liuJianMaoCao = PartL.liuJianMaoCao;
  static const livvic = PartL.livvic;
  static const lobster = PartL.lobster;
  static const lobsterTwo = PartL.lobsterTwo;
  static const londrinaOutline = PartL.londrinaOutline;
  static const londrinaShadow = PartL.londrinaShadow;
  static const londrinaSketch = PartL.londrinaSketch;
  static const londrinaSolid = PartL.londrinaSolid;
  static const longCang = PartL.longCang;
  static const lora = PartL.lora;
  static const loveLight = PartL.loveLight;
  static const loveYaLikeASister = PartL.loveYaLikeASister;
  static const lovedByTheKing = PartL.lovedByTheKing;
  static const loversQuarrel = PartL.loversQuarrel;
  static const luckiestGuy = PartL.luckiestGuy;
  static const lugrasimo = PartL.lugrasimo;
  static const lumanosimo = PartL.lumanosimo;
  static const lunasima = PartL.lunasima;
  static const lusitana = PartL.lusitana;
  static const lustria = PartL.lustria;
  static const luxuriousRoman = PartL.luxuriousRoman;
  static const luxuriousScript = PartL.luxuriousScript;
  static const mPlus1 = PartM.mPlus1;
  static const mPlus1Code = PartM.mPlus1Code;
  static const mPlus1p = PartM.mPlus1p;
  static const mPlus2 = PartM.mPlus2;
  static const mPlusCodeLatin = PartM.mPlusCodeLatin;
  static const mPlusRounded1c = PartM.mPlusRounded1c;
  static const maShanZheng = PartM.maShanZheng;
  static const macondo = PartM.macondo;
  static const macondoSwashCaps = PartM.macondoSwashCaps;
  static const mada = PartM.mada;
  static const madimiOne = PartM.madimiOne;
  static const magra = PartM.magra;
  static const maidenOrange = PartM.maidenOrange;
  static const maitree = PartM.maitree;
  static const majorMonoDisplay = PartM.majorMonoDisplay;
  static const mako = PartM.mako;
  static const mali = PartM.mali;
  static const mallanna = PartM.mallanna;
  static const maname = PartM.maname;
  static const mandali = PartM.mandali;
  static const manjari = PartM.manjari;
  static const manrope = PartM.manrope;
  static const mansalva = PartM.mansalva;
  static const manuale = PartM.manuale;
  static const marcellus = PartM.marcellus;
  static const marcellusSc = PartM.marcellusSc;
  static const marckScript = PartM.marckScript;
  static const margarine = PartM.margarine;
  static const marhey = PartM.marhey;
  static const markaziText = PartM.markaziText;
  static const markoOne = PartM.markoOne;
  static const marmelad = PartM.marmelad;
  static const martel = PartM.martel;
  static const martelSans = PartM.martelSans;
  static const martianMono = PartM.martianMono;
  static const marvel = PartM.marvel;
  static const mate = PartM.mate;
  static const mateSc = PartM.mateSc;
  static const mavenPro = PartM.mavenPro;
  static const mcLaren = PartM.mcLaren;
  static const meaCulpa = PartM.meaCulpa;
  static const meddon = PartM.meddon;
  static const medievalSharp = PartM.medievalSharp;
  static const medulaOne = PartM.medulaOne;
  static const meeraInimai = PartM.meeraInimai;
  static const megrim = PartM.megrim;
  static const meieScript = PartM.meieScript;
  static const meowScript = PartM.meowScript;
  static const merienda = PartM.merienda;
  static const merriweather = PartM.merriweather;
  static const merriweatherSans = PartM.merriweatherSans;
  static const metal = PartM.metal;
  static const metalMania = PartM.metalMania;
  static const metamorphous = PartM.metamorphous;
  static const metrophobic = PartM.metrophobic;
  static const michroma = PartM.michroma;
  static const micro5 = PartM.micro5;
  static const micro5Charted = PartM.micro5Charted;
  static const milonga = PartM.milonga;
  static const miltonian = PartM.miltonian;
  static const miltonianTattoo = PartM.miltonianTattoo;
  static const mina = PartM.mina;
  static const mingzat = PartM.mingzat;
  static const miniver = PartM.miniver;
  static const miriamLibre = PartM.miriamLibre;
  static const mirza = PartM.mirza;
  static const missFajardose = PartM.missFajardose;
  static const mitr = PartM.mitr;
  static const mochiyPopOne = PartM.mochiyPopOne;
  static const mochiyPopPOne = PartM.mochiyPopPOne;
  static const modak = PartM.modak;
  static const modernAntiqua = PartM.modernAntiqua;
  static const mogra = PartM.mogra;
  static const mohave = PartM.mohave;
  static const moiraiOne = PartM.moiraiOne;
  static const molengo = PartM.molengo;
  static const molle = PartM.molle;
  static const monda = PartM.monda;
  static const monofett = PartM.monofett;
  static const monomaniacOne = PartM.monomaniacOne;
  static const monoton = PartM.monoton;
  static const monsieurLaDoulaise = PartM.monsieurLaDoulaise;
  static const montaga = PartM.montaga;
  static const montaguSlab = PartM.montaguSlab;
  static const monteCarlo = PartM.monteCarlo;
  static const montez = PartM.montez;
  static const montserrat = PartM.montserrat;
  static const montserratAlternates = PartM.montserratAlternates;
  static const montserratSubrayada = PartM.montserratSubrayada;
  static const mooLahLah = PartM.mooLahLah;
  static const mooli = PartM.mooli;
  static const moonDance = PartM.moonDance;
  static const moul = PartM.moul;
  static const moulpali = PartM.moulpali;
  static const mountainsOfChristmas = PartM.mountainsOfChristmas;
  static const mouseMemoirs = PartM.mouseMemoirs;
  static const mrBedfort = PartM.mrBedfort;
  static const mrDafoe = PartM.mrDafoe;
  static const mrDeHaviland = PartM.mrDeHaviland;
  static const mrsSaintDelafield = PartM.mrsSaintDelafield;
  static const mrsSheppards = PartM.mrsSheppards;
  static const msMadi = PartM.msMadi;
  static const mukta = PartM.mukta;
  static const muktaMahee = PartM.muktaMahee;
  static const muktaMalar = PartM.muktaMalar;
  static const muktaVaani = PartM.muktaVaani;
  static const mulish = PartM.mulish;
  static const murecho = PartM.murecho;
  static const museoModerno = PartM.museoModerno;
  static const mySoul = PartM.mySoul;
  static const mynerve = PartM.mynerve;
  static const mysteryQuest = PartM.mysteryQuest;
  static const ntr = PartN.ntr;
  static const nabla = PartN.nabla;
  static const namdhinggo = PartN.namdhinggo;
  static const nanumBrushScript = PartN.nanumBrushScript;
  static const nanumGothic = PartN.nanumGothic;
  static const nanumGothicCoding = PartN.nanumGothicCoding;
  static const nanumMyeongjo = PartN.nanumMyeongjo;
  static const nanumPenScript = PartN.nanumPenScript;
  static const narnoor = PartN.narnoor;
  static const neonderthaw = PartN.neonderthaw;
  static const nerkoOne = PartN.nerkoOne;
  static const neucha = PartN.neucha;
  static const neuton = PartN.neuton;
  static const newRocker = PartN.newRocker;
  static const newTegomin = PartN.newTegomin;
  static const newsCycle = PartN.newsCycle;
  static const newsreader = PartN.newsreader;
  static const niconne = PartN.niconne;
  static const niramit = PartN.niramit;
  static const nixieOne = PartN.nixieOne;
  static const nobile = PartN.nobile;
  static const nokora = PartN.nokora;
  static const norican = PartN.norican;
  static const nosifer = PartN.nosifer;
  static const notable = PartN.notable;
  static const nothingYouCouldDo = PartN.nothingYouCouldDo;
  static const noticiaText = PartN.noticiaText;
  static const notoColorEmoji = PartN.notoColorEmoji;
  static const notoEmoji = PartN.notoEmoji;
  static const notoKufiArabic = PartN.notoKufiArabic;
  static const notoMusic = PartN.notoMusic;
  static const notoNaskhArabic = PartN.notoNaskhArabic;
  static const notoNastaliqUrdu = PartN.notoNastaliqUrdu;
  static const notoRashiHebrew = PartN.notoRashiHebrew;
  static const notoSans = PartN.notoSans;
  static const notoSansAdlam = PartN.notoSansAdlam;
  static const notoSansAdlamUnjoined = PartN.notoSansAdlamUnjoined;
  static const notoSansAnatolianHieroglyphs = PartN.notoSansAnatolianHieroglyphs;
  static const notoSansArabic = PartN.notoSansArabic;
  static const notoSansArmenian = PartN.notoSansArmenian;
  static const notoSansAvestan = PartN.notoSansAvestan;
  static const notoSansBalinese = PartN.notoSansBalinese;
  static const notoSansBamum = PartN.notoSansBamum;
  static const notoSansBassaVah = PartN.notoSansBassaVah;
  static const notoSansBatak = PartN.notoSansBatak;
  static const notoSansBengali = PartN.notoSansBengali;
  static const notoSansBhaiksuki = PartN.notoSansBhaiksuki;
  static const notoSansBrahmi = PartN.notoSansBrahmi;
  static const notoSansBuginese = PartN.notoSansBuginese;
  static const notoSansBuhid = PartN.notoSansBuhid;
  static const notoSansCanadianAboriginal = PartN.notoSansCanadianAboriginal;
  static const notoSansCarian = PartN.notoSansCarian;
  static const notoSansCaucasianAlbanian = PartN.notoSansCaucasianAlbanian;
  static const notoSansChakma = PartN.notoSansChakma;
  static const notoSansCham = PartN.notoSansCham;
  static const notoSansCherokee = PartN.notoSansCherokee;
  static const notoSansChorasmian = PartN.notoSansChorasmian;
  static const notoSansCoptic = PartN.notoSansCoptic;
  static const notoSansCuneiform = PartN.notoSansCuneiform;
  static const notoSansCypriot = PartN.notoSansCypriot;
  static const notoSansCyproMinoan = PartN.notoSansCyproMinoan;
  static const notoSansDeseret = PartN.notoSansDeseret;
  static const notoSansDevanagari = PartN.notoSansDevanagari;
  static const notoSansDisplay = PartN.notoSansDisplay;
  static const notoSansDuployan = PartN.notoSansDuployan;
  static const notoSansEgyptianHieroglyphs = PartN.notoSansEgyptianHieroglyphs;
  static const notoSansElbasan = PartN.notoSansElbasan;
  static const notoSansElymaic = PartN.notoSansElymaic;
  static const notoSansEthiopic = PartN.notoSansEthiopic;
  static const notoSansGeorgian = PartN.notoSansGeorgian;
  static const notoSansGlagolitic = PartN.notoSansGlagolitic;
  static const notoSansGothic = PartN.notoSansGothic;
  static const notoSansGrantha = PartN.notoSansGrantha;
  static const notoSansGujarati = PartN.notoSansGujarati;
  static const notoSansGunjalaGondi = PartN.notoSansGunjalaGondi;
  static const notoSansGurmukhi = PartN.notoSansGurmukhi;
  static const notoSansHk = PartN.notoSansHk;
  static const notoSansHanifiRohingya = PartN.notoSansHanifiRohingya;
  static const notoSansHanunoo = PartN.notoSansHanunoo;
  static const notoSansHatran = PartN.notoSansHatran;
  static const notoSansHebrew = PartN.notoSansHebrew;
  static const notoSansImperialAramaic = PartN.notoSansImperialAramaic;
  static const notoSansIndicSiyaqNumbers = PartN.notoSansIndicSiyaqNumbers;
  static const notoSansInscriptionalPahlavi = PartN.notoSansInscriptionalPahlavi;
  static const notoSansInscriptionalParthian = PartN.notoSansInscriptionalParthian;
  static const notoSansJp = PartN.notoSansJp;
  static const notoSansJavanese = PartN.notoSansJavanese;
  static const notoSansKr = PartN.notoSansKr;
  static const notoSansKaithi = PartN.notoSansKaithi;
  static const notoSansKannada = PartN.notoSansKannada;
  static const notoSansKawi = PartN.notoSansKawi;
  static const notoSansKayahLi = PartN.notoSansKayahLi;
  static const notoSansKharoshthi = PartN.notoSansKharoshthi;
  static const notoSansKhmer = PartN.notoSansKhmer;
  static const notoSansKhojki = PartN.notoSansKhojki;
  static const notoSansKhudawadi = PartN.notoSansKhudawadi;
  static const notoSansLao = PartN.notoSansLao;
  static const notoSansLaoLooped = PartN.notoSansLaoLooped;
  static const notoSansLepcha = PartN.notoSansLepcha;
  static const notoSansLimbu = PartN.notoSansLimbu;
  static const notoSansLinearA = PartN.notoSansLinearA;
  static const notoSansLinearB = PartN.notoSansLinearB;
  static const notoSansLisu = PartN.notoSansLisu;
  static const notoSansLycian = PartN.notoSansLycian;
  static const notoSansLydian = PartN.notoSansLydian;
  static const notoSansMahajani = PartN.notoSansMahajani;
  static const notoSansMalayalam = PartN.notoSansMalayalam;
  static const notoSansMandaic = PartN.notoSansMandaic;
  static const notoSansManichaean = PartN.notoSansManichaean;
  static const notoSansMarchen = PartN.notoSansMarchen;
  static const notoSansMasaramGondi = PartN.notoSansMasaramGondi;
  static const notoSansMath = PartN.notoSansMath;
  static const notoSansMayanNumerals = PartN.notoSansMayanNumerals;
  static const notoSansMedefaidrin = PartN.notoSansMedefaidrin;
  static const notoSansMeeteiMayek = PartN.notoSansMeeteiMayek;
  static const notoSansMendeKikakui = PartN.notoSansMendeKikakui;
  static const notoSansMeroitic = PartN.notoSansMeroitic;
  static const notoSansMiao = PartN.notoSansMiao;
  static const notoSansModi = PartN.notoSansModi;
  static const notoSansMongolian = PartN.notoSansMongolian;
  static const notoSansMono = PartN.notoSansMono;
  static const notoSansMro = PartN.notoSansMro;
  static const notoSansMultani = PartN.notoSansMultani;
  static const notoSansMyanmar = PartN.notoSansMyanmar;
  static const notoSansNKo = PartN.notoSansNKo;
  static const notoSansNKoUnjoined = PartN.notoSansNKoUnjoined;
  static const notoSansNabataean = PartN.notoSansNabataean;
  static const notoSansNagMundari = PartN.notoSansNagMundari;
  static const notoSansNandinagari = PartN.notoSansNandinagari;
  static const notoSansNewTaiLue = PartN.notoSansNewTaiLue;
  static const notoSansNewa = PartN.notoSansNewa;
  static const notoSansNushu = PartN.notoSansNushu;
  static const notoSansOgham = PartN.notoSansOgham;
  static const notoSansOlChiki = PartN.notoSansOlChiki;
  static const notoSansOldHungarian = PartN.notoSansOldHungarian;
  static const notoSansOldItalic = PartN.notoSansOldItalic;
  static const notoSansOldNorthArabian = PartN.notoSansOldNorthArabian;
  static const notoSansOldPermic = PartN.notoSansOldPermic;
  static const notoSansOldPersian = PartN.notoSansOldPersian;
  static const notoSansOldSogdian = PartN.notoSansOldSogdian;
  static const notoSansOldSouthArabian = PartN.notoSansOldSouthArabian;
  static const notoSansOldTurkic = PartN.notoSansOldTurkic;
  static const notoSansOriya = PartN.notoSansOriya;
  static const notoSansOsage = PartN.notoSansOsage;
  static const notoSansOsmanya = PartN.notoSansOsmanya;
  static const notoSansPahawhHmong = PartN.notoSansPahawhHmong;
  static const notoSansPalmyrene = PartN.notoSansPalmyrene;
  static const notoSansPauCinHau = PartN.notoSansPauCinHau;
  static const notoSansPhagsPa = PartN.notoSansPhagsPa;
  static const notoSansPhoenician = PartN.notoSansPhoenician;
  static const notoSansPsalterPahlavi = PartN.notoSansPsalterPahlavi;
  static const notoSansRejang = PartN.notoSansRejang;
  static const notoSansRunic = PartN.notoSansRunic;
  static const notoSansSc = PartN.notoSansSc;
  static const notoSansSamaritan = PartN.notoSansSamaritan;
  static const notoSansSaurashtra = PartN.notoSansSaurashtra;
  static const notoSansSharada = PartN.notoSansSharada;
  static const notoSansShavian = PartN.notoSansShavian;
  static const notoSansSiddham = PartN.notoSansSiddham;
  static const notoSansSignWriting = PartN.notoSansSignWriting;
  static const notoSansSinhala = PartN.notoSansSinhala;
  static const notoSansSogdian = PartN.notoSansSogdian;
  static const notoSansSoraSompeng = PartN.notoSansSoraSompeng;
  static const notoSansSoyombo = PartN.notoSansSoyombo;
  static const notoSansSundanese = PartN.notoSansSundanese;
  static const notoSansSylotiNagri = PartN.notoSansSylotiNagri;
  static const notoSansSymbols = PartN.notoSansSymbols;
  static const notoSansSymbols2 = PartN.notoSansSymbols2;
  static const notoSansSyriac = PartN.notoSansSyriac;
  static const notoSansSyriacEastern = PartN.notoSansSyriacEastern;
  static const notoSansTc = PartN.notoSansTc;
  static const notoSansTagalog = PartN.notoSansTagalog;
  static const notoSansTagbanwa = PartN.notoSansTagbanwa;
  static const notoSansTaiLe = PartN.notoSansTaiLe;
  static const notoSansTaiTham = PartN.notoSansTaiTham;
  static const notoSansTaiViet = PartN.notoSansTaiViet;
  static const notoSansTakri = PartN.notoSansTakri;
  static const notoSansTamil = PartN.notoSansTamil;
  static const notoSansTamilSupplement = PartN.notoSansTamilSupplement;
  static const notoSansTangsa = PartN.notoSansTangsa;
  static const notoSansTelugu = PartN.notoSansTelugu;
  static const notoSansThaana = PartN.notoSansThaana;
  static const notoSansThai = PartN.notoSansThai;
  static const notoSansThaiLooped = PartN.notoSansThaiLooped;
  static const notoSansTifinagh = PartN.notoSansTifinagh;
  static const notoSansTirhuta = PartN.notoSansTirhuta;
  static const notoSansUgaritic = PartN.notoSansUgaritic;
  static const notoSansVai = PartN.notoSansVai;
  static const notoSansVithkuqi = PartN.notoSansVithkuqi;
  static const notoSansWancho = PartN.notoSansWancho;
  static const notoSansWarangCiti = PartN.notoSansWarangCiti;
  static const notoSansYi = PartN.notoSansYi;
  static const notoSansZanabazarSquare = PartN.notoSansZanabazarSquare;
  static const notoSerif = PartN.notoSerif;
  static const notoSerifAhom = PartN.notoSerifAhom;
  static const notoSerifArmenian = PartN.notoSerifArmenian;
  static const notoSerifBalinese = PartN.notoSerifBalinese;
  static const notoSerifBengali = PartN.notoSerifBengali;
  static const notoSerifDevanagari = PartN.notoSerifDevanagari;
  static const notoSerifDisplay = PartN.notoSerifDisplay;
  static const notoSerifDogra = PartN.notoSerifDogra;
  static const notoSerifEthiopic = PartN.notoSerifEthiopic;
  static const notoSerifGeorgian = PartN.notoSerifGeorgian;
  static const notoSerifGrantha = PartN.notoSerifGrantha;
  static const notoSerifGujarati = PartN.notoSerifGujarati;
  static const notoSerifGurmukhi = PartN.notoSerifGurmukhi;
  static const notoSerifHk = PartN.notoSerifHk;
  static const notoSerifHebrew = PartN.notoSerifHebrew;
  static const notoSerifJp = PartN.notoSerifJp;
  static const notoSerifKr = PartN.notoSerifKr;
  static const notoSerifKannada = PartN.notoSerifKannada;
  static const notoSerifKhitanSmallScript = PartN.notoSerifKhitanSmallScript;
  static const notoSerifKhmer = PartN.notoSerifKhmer;
  static const notoSerifKhojki = PartN.notoSerifKhojki;
  static const notoSerifLao = PartN.notoSerifLao;
  static const notoSerifMakasar = PartN.notoSerifMakasar;
  static const notoSerifMalayalam = PartN.notoSerifMalayalam;
  static const notoSerifMyanmar = PartN.notoSerifMyanmar;
  static const notoSerifNpHmong = PartN.notoSerifNpHmong;
  static const notoSerifOldUyghur = PartN.notoSerifOldUyghur;
  static const notoSerifOriya = PartN.notoSerifOriya;
  static const notoSerifOttomanSiyaq = PartN.notoSerifOttomanSiyaq;
  static const notoSerifSc = PartN.notoSerifSc;
  static const notoSerifSinhala = PartN.notoSerifSinhala;
  static const notoSerifTc = PartN.notoSerifTc;
  static const notoSerifTamil = PartN.notoSerifTamil;
  static const notoSerifTangut = PartN.notoSerifTangut;
  static const notoSerifTelugu = PartN.notoSerifTelugu;
  static const notoSerifThai = PartN.notoSerifThai;
  static const notoSerifTibetan = PartN.notoSerifTibetan;
  static const notoSerifToto = PartN.notoSerifToto;
  static const notoSerifVithkuqi = PartN.notoSerifVithkuqi;
  static const notoSerifYezidi = PartN.notoSerifYezidi;
  static const notoTraditionalNushu = PartN.notoTraditionalNushu;
  static const notoZnamennyMusicalNotation = PartN.notoZnamennyMusicalNotation;
  static const novaCut = PartN.novaCut;
  static const novaFlat = PartN.novaFlat;
  static const novaMono = PartN.novaMono;
  static const novaOval = PartN.novaOval;
  static const novaRound = PartN.novaRound;
  static const novaScript = PartN.novaScript;
  static const novaSlim = PartN.novaSlim;
  static const novaSquare = PartN.novaSquare;
  static const numans = PartN.numans;
  static const nunito = PartN.nunito;
  static const nunitoSans = PartN.nunitoSans;
  static const nuosuSil = PartN.nuosuSil;
  static const odibeeSans = PartO.odibeeSans;
  static const odorMeanChey = PartO.odorMeanChey;
  static const offside = PartO.offside;
  static const oi = PartO.oi;
  static const ojuju = PartO.ojuju;
  static const oldStandardTt = PartO.oldStandardTt;
  static const oldenburg = PartO.oldenburg;
  static const ole = PartO.ole;
  static const oleoScript = PartO.oleoScript;
  static const oleoScriptSwashCaps = PartO.oleoScriptSwashCaps;
  static const onest = PartO.onest;
  static const ooohBaby = PartO.ooohBaby;
  static const openSans = PartO.openSans;
  static const openSansCondensed = PartO.openSansCondensed;
  static const oranienbaum = PartO.oranienbaum;
  static const orbit = PartO.orbit;
  static const orbitron = PartO.orbitron;
  static const oregano = PartO.oregano;
  static const orelegaOne = PartO.orelegaOne;
  static const orienta = PartO.orienta;
  static const originalSurfer = PartO.originalSurfer;
  static const oswald = PartO.oswald;
  static const outfit = PartO.outfit;
  static const overTheRainbow = PartO.overTheRainbow;
  static const overlock = PartO.overlock;
  static const overlockSc = PartO.overlockSc;
  static const overpass = PartO.overpass;
  static const overpassMono = PartO.overpassMono;
  static const ovo = PartO.ovo;
  static const oxanium = PartO.oxanium;
  static const oxygen = PartO.oxygen;
  static const oxygenMono = PartO.oxygenMono;
  static const ptMono = PartP.ptMono;
  static const ptSans = PartP.ptSans;
  static const ptSansCaption = PartP.ptSansCaption;
  static const ptSansNarrow = PartP.ptSansNarrow;
  static const ptSerif = PartP.ptSerif;
  static const ptSerifCaption = PartP.ptSerifCaption;
  static const pacifico = PartP.pacifico;
  static const padauk = PartP.padauk;
  static const padyakkeExpandedOne = PartP.padyakkeExpandedOne;
  static const palanquin = PartP.palanquin;
  static const palanquinDark = PartP.palanquinDark;
  static const paletteMosaic = PartP.paletteMosaic;
  static const pangolin = PartP.pangolin;
  static const paprika = PartP.paprika;
  static const parisienne = PartP.parisienne;
  static const passeroOne = PartP.passeroOne;
  static const passionOne = PartP.passionOne;
  static const passionsConflict = PartP.passionsConflict;
  static const pathwayExtreme = PartP.pathwayExtreme;
  static const pathwayGothicOne = PartP.pathwayGothicOne;
  static const patrickHand = PartP.patrickHand;
  static const patrickHandSc = PartP.patrickHandSc;
  static const pattaya = PartP.pattaya;
  static const patuaOne = PartP.patuaOne;
  static const pavanam = PartP.pavanam;
  static const paytoneOne = PartP.paytoneOne;
  static const peddana = PartP.peddana;
  static const peralta = PartP.peralta;
  static const permanentMarker = PartP.permanentMarker;
  static const petemoss = PartP.petemoss;
  static const petitFormalScript = PartP.petitFormalScript;
  static const petrona = PartP.petrona;
  static const philosopher = PartP.philosopher;
  static const phudu = PartP.phudu;
  static const piazzolla = PartP.piazzolla;
  static const piedra = PartP.piedra;
  static const pinyonScript = PartP.pinyonScript;
  static const pirataOne = PartP.pirataOne;
  static const pixelifySans = PartP.pixelifySans;
  static const plaster = PartP.plaster;
  static const platypi = PartP.platypi;
  static const play = PartP.play;
  static const playball = PartP.playball;
  static const playfair = PartP.playfair;
  static const playfairDisplay = PartP.playfairDisplay;
  static const playfairDisplaySc = PartP.playfairDisplaySc;
  static const playpenSans = PartP.playpenSans;
  static const playwriteAr = PartP.playwriteAr;
  static const playwriteAt = PartP.playwriteAt;
  static const playwriteAuNsw = PartP.playwriteAuNsw;
  static const playwriteAuQld = PartP.playwriteAuQld;
  static const playwriteAuSa = PartP.playwriteAuSa;
  static const playwriteAuTas = PartP.playwriteAuTas;
  static const playwriteAuVic = PartP.playwriteAuVic;
  static const playwriteBeVlg = PartP.playwriteBeVlg;
  static const playwriteBeWal = PartP.playwriteBeWal;
  static const playwriteBr = PartP.playwriteBr;
  static const playwriteCa = PartP.playwriteCa;
  static const playwriteCl = PartP.playwriteCl;
  static const playwriteCo = PartP.playwriteCo;
  static const playwriteCu = PartP.playwriteCu;
  static const playwriteCz = PartP.playwriteCz;
  static const playwriteDeGrund = PartP.playwriteDeGrund;
  static const playwriteDeLa = PartP.playwriteDeLa;
  static const playwriteDeSas = PartP.playwriteDeSas;
  static const playwriteDeVa = PartP.playwriteDeVa;
  static const playwriteDkLoopet = PartP.playwriteDkLoopet;
  static const playwriteDkUloopet = PartP.playwriteDkUloopet;
  static const playwriteEs = PartP.playwriteEs;
  static const playwriteEsDeco = PartP.playwriteEsDeco;
  static const playwriteFrModerne = PartP.playwriteFrModerne;
  static const playwriteFrTrad = PartP.playwriteFrTrad;
  static const playwriteGbJ = PartP.playwriteGbJ;
  static const playwriteGbS = PartP.playwriteGbS;
  static const playwriteHr = PartP.playwriteHr;
  static const playwriteHrLijeva = PartP.playwriteHrLijeva;
  static const playwriteHu = PartP.playwriteHu;
  static const playwriteId = PartP.playwriteId;
  static const playwriteIe = PartP.playwriteIe;
  static const playwriteIn = PartP.playwriteIn;
  static const playwriteIs = PartP.playwriteIs;
  static const playwriteItModerna = PartP.playwriteItModerna;
  static const playwriteItTrad = PartP.playwriteItTrad;
  static const playwriteMx = PartP.playwriteMx;
  static const playwriteNgModern = PartP.playwriteNgModern;
  static const playwriteNl = PartP.playwriteNl;
  static const playwriteNo = PartP.playwriteNo;
  static const playwriteNz = PartP.playwriteNz;
  static const playwritePe = PartP.playwritePe;
  static const playwritePl = PartP.playwritePl;
  static const playwritePt = PartP.playwritePt;
  static const playwriteRo = PartP.playwriteRo;
  static const playwriteSk = PartP.playwriteSk;
  static const playwriteTz = PartP.playwriteTz;
  static const playwriteUsModern = PartP.playwriteUsModern;
  static const playwriteUsTrad = PartP.playwriteUsTrad;
  static const playwriteVn = PartP.playwriteVn;
  static const playwriteZa = PartP.playwriteZa;
  static const plusJakartaSans = PartP.plusJakartaSans;
  static const podkova = PartP.podkova;
  static const poetsenOne = PartP.poetsenOne;
  static const poiretOne = PartP.poiretOne;
  static const pollerOne = PartP.pollerOne;
  static const poltawskiNowy = PartP.poltawskiNowy;
  static const poly = PartP.poly;
  static const pompiere = PartP.pompiere;
  static const pontanoSans = PartP.pontanoSans;
  static const poorStory = PartP.poorStory;
  static const poppins = PartP.poppins;
  static const portLligatSans = PartP.portLligatSans;
  static const portLligatSlab = PartP.portLligatSlab;
  static const pottaOne = PartP.pottaOne;
  static const pragatiNarrow = PartP.pragatiNarrow;
  static const praise = PartP.praise;
  static const prata = PartP.prata;
  static const preahvihear = PartP.preahvihear;
  static const pressStart2p = PartP.pressStart2p;
  static const pridi = PartP.pridi;
  static const princessSofia = PartP.princessSofia;
  static const prociono = PartP.prociono;
  static const prompt = PartP.prompt;
  static const prostoOne = PartP.prostoOne;
  static const protestGuerrilla = PartP.protestGuerrilla;
  static const protestRevolution = PartP.protestRevolution;
  static const protestRiot = PartP.protestRiot;
  static const protestStrike = PartP.protestStrike;
  static const prozaLibre = PartP.prozaLibre;
  static const publicSans = PartP.publicSans;
  static const puppiesPlay = PartP.puppiesPlay;
  static const puritan = PartP.puritan;
  static const purplePurse = PartP.purplePurse;
  static const qahiri = PartQ.qahiri;
  static const quando = PartQ.quando;
  static const quantico = PartQ.quantico;
  static const quattrocento = PartQ.quattrocento;
  static const quattrocentoSans = PartQ.quattrocentoSans;
  static const questrial = PartQ.questrial;
  static const quicksand = PartQ.quicksand;
  static const quintessential = PartQ.quintessential;
  static const qwigley = PartQ.qwigley;
  static const qwitcherGrypen = PartQ.qwitcherGrypen;
  static const rem = PartR.rem;
  static const racingSansOne = PartR.racingSansOne;
  static const radioCanada = PartR.radioCanada;
  static const radioCanadaBig = PartR.radioCanadaBig;
  static const radley = PartR.radley;
  static const rajdhani = PartR.rajdhani;
  static const rakkas = PartR.rakkas;
  static const raleway = PartR.raleway;
  static const ralewayDots = PartR.ralewayDots;
  static const ramabhadra = PartR.ramabhadra;
  static const ramaraja = PartR.ramaraja;
  static const rambla = PartR.rambla;
  static const rammettoOne = PartR.rammettoOne;
  static const rampartOne = PartR.rampartOne;
  static const ranchers = PartR.ranchers;
  static const rancho = PartR.rancho;
  static const ranga = PartR.ranga;
  static const rasa = PartR.rasa;
  static const rationale = PartR.rationale;
  static const raviPrakash = PartR.raviPrakash;
  static const readexPro = PartR.readexPro;
  static const recursive = PartR.recursive;
  static const redHatDisplay = PartR.redHatDisplay;
  static const redHatMono = PartR.redHatMono;
  static const redHatText = PartR.redHatText;
  static const redRose = PartR.redRose;
  static const redacted = PartR.redacted;
  static const redactedScript = PartR.redactedScript;
  static const redditMono = PartR.redditMono;
  static const redditSans = PartR.redditSans;
  static const redditSansCondensed = PartR.redditSansCondensed;
  static const redressed = PartR.redressed;
  static const reemKufi = PartR.reemKufi;
  static const reemKufiFun = PartR.reemKufiFun;
  static const reemKufiInk = PartR.reemKufiInk;
  static const reenieBeanie = PartR.reenieBeanie;
  static const reggaeOne = PartR.reggaeOne;
  static const rethinkSans = PartR.rethinkSans;
  static const revalia = PartR.revalia;
  static const rhodiumLibre = PartR.rhodiumLibre;
  static const ribeye = PartR.ribeye;
  static const ribeyeMarrow = PartR.ribeyeMarrow;
  static const righteous = PartR.righteous;
  static const risque = PartR.risque;
  static const roadRage = PartR.roadRage;
  static const roboto = PartR.roboto;
  static const robotoCondensed = PartR.robotoCondensed;
  static const robotoFlex = PartR.robotoFlex;
  static const robotoMono = PartR.robotoMono;
  static const robotoSerif = PartR.robotoSerif;
  static const robotoSlab = PartR.robotoSlab;
  static const rochester = PartR.rochester;
  static const rock3d = PartR.rock3d;
  static const rockSalt = PartR.rockSalt;
  static const rocknRollOne = PartR.rocknRollOne;
  static const rokkitt = PartR.rokkitt;
  static const romanesco = PartR.romanesco;
  static const ropaSans = PartR.ropaSans;
  static const rosario = PartR.rosario;
  static const rosarivo = PartR.rosarivo;
  static const rougeScript = PartR.rougeScript;
  static const rowdies = PartR.rowdies;
  static const rozhaOne = PartR.rozhaOne;
  static const rubik = PartR.rubik;
  static const rubik80sFade = PartR.rubik80sFade;
  static const rubikBeastly = PartR.rubikBeastly;
  static const rubikBrokenFax = PartR.rubikBrokenFax;
  static const rubikBubbles = PartR.rubikBubbles;
  static const rubikBurned = PartR.rubikBurned;
  static const rubikDirt = PartR.rubikDirt;
  static const rubikDistressed = PartR.rubikDistressed;
  static const rubikDoodleShadow = PartR.rubikDoodleShadow;
  static const rubikDoodleTriangles = PartR.rubikDoodleTriangles;
  static const rubikGemstones = PartR.rubikGemstones;
  static const rubikGlitch = PartR.rubikGlitch;
  static const rubikGlitchPop = PartR.rubikGlitchPop;
  static const rubikIso = PartR.rubikIso;
  static const rubikLines = PartR.rubikLines;
  static const rubikMaps = PartR.rubikMaps;
  static const rubikMarkerHatch = PartR.rubikMarkerHatch;
  static const rubikMaze = PartR.rubikMaze;
  static const rubikMicrobe = PartR.rubikMicrobe;
  static const rubikMonoOne = PartR.rubikMonoOne;
  static const rubikMoonrocks = PartR.rubikMoonrocks;
  static const rubikPixels = PartR.rubikPixels;
  static const rubikPuddles = PartR.rubikPuddles;
  static const rubikScribble = PartR.rubikScribble;
  static const rubikSprayPaint = PartR.rubikSprayPaint;
  static const rubikStorm = PartR.rubikStorm;
  static const rubikVinyl = PartR.rubikVinyl;
  static const rubikWetPaint = PartR.rubikWetPaint;
  static const ruda = PartR.ruda;
  static const rufina = PartR.rufina;
  static const rugeBoogie = PartR.rugeBoogie;
  static const ruluko = PartR.ruluko;
  static const rumRaisin = PartR.rumRaisin;
  static const ruslanDisplay = PartR.ruslanDisplay;
  static const russoOne = PartR.russoOne;
  static const ruthie = PartR.ruthie;
  static const ruwudu = PartR.ruwudu;
  static const rye = PartR.rye;
  static const stixTwoText = PartS.stixTwoText;
  static const sacramento = PartS.sacramento;
  static const sahitya = PartS.sahitya;
  static const sail = PartS.sail;
  static const saira = PartS.saira;
  static const sairaCondensed = PartS.sairaCondensed;
  static const sairaExtraCondensed = PartS.sairaExtraCondensed;
  static const sairaSemiCondensed = PartS.sairaSemiCondensed;
  static const sairaStencilOne = PartS.sairaStencilOne;
  static const salsa = PartS.salsa;
  static const sanchez = PartS.sanchez;
  static const sancreek = PartS.sancreek;
  static const sansita = PartS.sansita;
  static const sansitaSwashed = PartS.sansitaSwashed;
  static const sarabun = PartS.sarabun;
  static const sarala = PartS.sarala;
  static const sarina = PartS.sarina;
  static const sarpanch = PartS.sarpanch;
  static const sassyFrass = PartS.sassyFrass;
  static const satisfy = PartS.satisfy;
  static const sawarabiGothic = PartS.sawarabiGothic;
  static const sawarabiMincho = PartS.sawarabiMincho;
  static const scada = PartS.scada;
  static const scheherazadeNew = PartS.scheherazadeNew;
  static const schibstedGrotesk = PartS.schibstedGrotesk;
  static const schoolbell = PartS.schoolbell;
  static const scopeOne = PartS.scopeOne;
  static const seaweedScript = PartS.seaweedScript;
  static const secularOne = PartS.secularOne;
  static const sedan = PartS.sedan;
  static const sedanSc = PartS.sedanSc;
  static const sedgwickAve = PartS.sedgwickAve;
  static const sedgwickAveDisplay = PartS.sedgwickAveDisplay;
  static const sen = PartS.sen;
  static const sendFlowers = PartS.sendFlowers;
  static const sevillana = PartS.sevillana;
  static const seymourOne = PartS.seymourOne;
  static const shadowsIntoLight = PartS.shadowsIntoLight;
  static const shadowsIntoLightTwo = PartS.shadowsIntoLightTwo;
  static const shalimar = PartS.shalimar;
  static const shantellSans = PartS.shantellSans;
  static const shanti = PartS.shanti;
  static const share = PartS.share;
  static const shareTech = PartS.shareTech;
  static const shareTechMono = PartS.shareTechMono;
  static const shipporiAntique = PartS.shipporiAntique;
  static const shipporiAntiqueB1 = PartS.shipporiAntiqueB1;
  static const shipporiMincho = PartS.shipporiMincho;
  static const shipporiMinchoB1 = PartS.shipporiMinchoB1;
  static const shizuru = PartS.shizuru;
  static const shojumaru = PartS.shojumaru;
  static const shortStack = PartS.shortStack;
  static const shrikhand = PartS.shrikhand;
  static const siemreap = PartS.siemreap;
  static const sigmar = PartS.sigmar;
  static const sigmarOne = PartS.sigmarOne;
  static const signika = PartS.signika;
  static const signikaNegative = PartS.signikaNegative;
  static const silkscreen = PartS.silkscreen;
  static const simonetta = PartS.simonetta;
  static const singleDay = PartS.singleDay;
  static const sintony = PartS.sintony;
  static const sirinStencil = PartS.sirinStencil;
  static const sixCaps = PartS.sixCaps;
  static const sixtyfour = PartS.sixtyfour;
  static const skranji = PartS.skranji;
  static const slabo13px = PartS.slabo13px;
  static const slabo27px = PartS.slabo27px;
  static const slackey = PartS.slackey;
  static const slacksideOne = PartS.slacksideOne;
  static const smokum = PartS.smokum;
  static const smooch = PartS.smooch;
  static const smoochSans = PartS.smoochSans;
  static const smythe = PartS.smythe;
  static const sniglet = PartS.sniglet;
  static const snippet = PartS.snippet;
  static const snowburstOne = PartS.snowburstOne;
  static const sofadiOne = PartS.sofadiOne;
  static const sofia = PartS.sofia;
  static const sofiaSans = PartS.sofiaSans;
  static const sofiaSansCondensed = PartS.sofiaSansCondensed;
  static const sofiaSansExtraCondensed = PartS.sofiaSansExtraCondensed;
  static const sofiaSansSemiCondensed = PartS.sofiaSansSemiCondensed;
  static const solitreo = PartS.solitreo;
  static const solway = PartS.solway;
  static const sometypeMono = PartS.sometypeMono;
  static const songMyung = PartS.songMyung;
  static const sono = PartS.sono;
  static const sonsieOne = PartS.sonsieOne;
  static const sora = PartS.sora;
  static const sortsMillGoudy = PartS.sortsMillGoudy;
  static const sourceCodePro = PartS.sourceCodePro;
  static const sourceSans3 = PartS.sourceSans3;
  static const sourceSerif4 = PartS.sourceSerif4;
  static const spaceGrotesk = PartS.spaceGrotesk;
  static const spaceMono = PartS.spaceMono;
  static const specialElite = PartS.specialElite;
  static const spectral = PartS.spectral;
  static const spectralSc = PartS.spectralSc;
  static const spicyRice = PartS.spicyRice;
  static const spinnaker = PartS.spinnaker;
  static const spirax = PartS.spirax;
  static const splash = PartS.splash;
  static const splineSans = PartS.splineSans;
  static const splineSansMono = PartS.splineSansMono;
  static const squadaOne = PartS.squadaOne;
  static const squarePeg = PartS.squarePeg;
  static const sreeKrushnadevaraya = PartS.sreeKrushnadevaraya;
  static const sriracha = PartS.sriracha;
  static const srisakdi = PartS.srisakdi;
  static const staatliches = PartS.staatliches;
  static const stalemate = PartS.stalemate;
  static const stalinistOne = PartS.stalinistOne;
  static const stardosStencil = PartS.stardosStencil;
  static const stick = PartS.stick;
  static const stickNoBills = PartS.stickNoBills;
  static const stintUltraCondensed = PartS.stintUltraCondensed;
  static const stintUltraExpanded = PartS.stintUltraExpanded;
  static const stoke = PartS.stoke;
  static const strait = PartS.strait;
  static const styleScript = PartS.styleScript;
  static const stylish = PartS.stylish;
  static const sueEllenFrancisco = PartS.sueEllenFrancisco;
  static const suezOne = PartS.suezOne;
  static const sulphurPoint = PartS.sulphurPoint;
  static const sumana = PartS.sumana;
  static const sunflower = PartS.sunflower;
  static const sunshiney = PartS.sunshiney;
  static const supermercadoOne = PartS.supermercadoOne;
  static const sura = PartS.sura;
  static const suranna = PartS.suranna;
  static const suravaram = PartS.suravaram;
  static const suwannaphum = PartS.suwannaphum;
  static const swankyAndMooMoo = PartS.swankyAndMooMoo;
  static const syncopate = PartS.syncopate;
  static const syne = PartS.syne;
  static const syneMono = PartS.syneMono;
  static const syneTactile = PartS.syneTactile;
  static const tacOne = PartT.tacOne;
  static const taiHeritagePro = PartT.taiHeritagePro;
  static const tajawal = PartT.tajawal;
  static const tangerine = PartT.tangerine;
  static const tapestry = PartT.tapestry;
  static const taprom = PartT.taprom;
  static const tauri = PartT.tauri;
  static const taviraj = PartT.taviraj;
  static const teachers = PartT.teachers;
  static const teko = PartT.teko;
  static const tektur = PartT.tektur;
  static const telex = PartT.telex;
  static const tenaliRamakrishna = PartT.tenaliRamakrishna;
  static const tenorSans = PartT.tenorSans;
  static const textMeOne = PartT.textMeOne;
  static const texturina = PartT.texturina;
  static const thasadith = PartT.thasadith;
  static const theGirlNextDoor = PartT.theGirlNextDoor;
  static const theNautigal = PartT.theNautigal;
  static const tienne = PartT.tienne;
  static const tillana = PartT.tillana;
  static const tiltNeon = PartT.tiltNeon;
  static const tiltPrism = PartT.tiltPrism;
  static const tiltWarp = PartT.tiltWarp;
  static const timmana = PartT.timmana;
  static const tinos = PartT.tinos;
  static const tiny5 = PartT.tiny5;
  static const tiroBangla = PartT.tiroBangla;
  static const tiroDevanagariHindi = PartT.tiroDevanagariHindi;
  static const tiroDevanagariMarathi = PartT.tiroDevanagariMarathi;
  static const tiroDevanagariSanskrit = PartT.tiroDevanagariSanskrit;
  static const tiroGurmukhi = PartT.tiroGurmukhi;
  static const tiroKannada = PartT.tiroKannada;
  static const tiroTamil = PartT.tiroTamil;
  static const tiroTelugu = PartT.tiroTelugu;
  static const titanOne = PartT.titanOne;
  static const titilliumWeb = PartT.titilliumWeb;
  static const tomorrow = PartT.tomorrow;
  static const tourney = PartT.tourney;
  static const tradeWinds = PartT.tradeWinds;
  static const trainOne = PartT.trainOne;
  static const trirong = PartT.trirong;
  static const trispace = PartT.trispace;
  static const trocchi = PartT.trocchi;
  static const trochut = PartT.trochut;
  static const truculenta = PartT.truculenta;
  static const trykker = PartT.trykker;
  static const tsukimiRounded = PartT.tsukimiRounded;
  static const tulpenOne = PartT.tulpenOne;
  static const turretRoad = PartT.turretRoad;
  static const twinkleStar = PartT.twinkleStar;
  static const ubuntu = PartU.ubuntu;
  static const ubuntuCondensed = PartU.ubuntuCondensed;
  static const ubuntuMono = PartU.ubuntuMono;
  static const ubuntuSans = PartU.ubuntuSans;
  static const ubuntuSansMono = PartU.ubuntuSansMono;
  static const uchen = PartU.uchen;
  static const ultra = PartU.ultra;
  static const unbounded = PartU.unbounded;
  static const uncialAntiqua = PartU.uncialAntiqua;
  static const underdog = PartU.underdog;
  static const unicaOne = PartU.unicaOne;
  static const unifrakturCook = PartU.unifrakturCook;
  static const unifrakturMaguntia = PartU.unifrakturMaguntia;
  static const unkempt = PartU.unkempt;
  static const unlock = PartU.unlock;
  static const unna = PartU.unna;
  static const updock = PartU.updock;
  static const urbanist = PartU.urbanist;
  static const vt323 = PartV.vt323;
  static const vampiroOne = PartV.vampiroOne;
  static const varela = PartV.varela;
  static const varelaRound = PartV.varelaRound;
  static const varta = PartV.varta;
  static const vastShadow = PartV.vastShadow;
  static const vazirmatn = PartV.vazirmatn;
  static const vesperLibre = PartV.vesperLibre;
  static const viaodaLibre = PartV.viaodaLibre;
  static const vibes = PartV.vibes;
  static const vibur = PartV.vibur;
  static const victorMono = PartV.victorMono;
  static const vidaloka = PartV.vidaloka;
  static const viga = PartV.viga;
  static const vinaSans = PartV.vinaSans;
  static const voces = PartV.voces;
  static const volkhov = PartV.volkhov;
  static const vollkorn = PartV.vollkorn;
  static const vollkornSc = PartV.vollkornSc;
  static const voltaire = PartV.voltaire;
  static const vujahdayScript = PartV.vujahdayScript;
  static const waitingForTheSunrise = PartW.waitingForTheSunrise;
  static const wallpoet = PartW.wallpoet;
  static const walterTurncoat = PartW.walterTurncoat;
  static const warnes = PartW.warnes;
  static const waterBrush = PartW.waterBrush;
  static const waterfall = PartW.waterfall;
  static const wavefont = PartW.wavefont;
  static const wellfleet = PartW.wellfleet;
  static const wendyOne = PartW.wendyOne;
  static const whisper = PartW.whisper;
  static const windSong = PartW.windSong;
  static const wireOne = PartW.wireOne;
  static const wittgenstein = PartW.wittgenstein;
  static const wixMadeforDisplay = PartW.wixMadeforDisplay;
  static const wixMadeforText = PartW.wixMadeforText;
  static const workSans = PartW.workSans;
  static const workbench = PartW.workbench;
  static const xanhMono = PartX.xanhMono;
  static const yaldevi = PartY.yaldevi;
  static const yanoneKaffeesatz = PartY.yanoneKaffeesatz;
  static const yantramanav = PartY.yantramanav;
  static const yarndings12 = PartY.yarndings12;
  static const yarndings12Charted = PartY.yarndings12Charted;
  static const yarndings20 = PartY.yarndings20;
  static const yarndings20Charted = PartY.yarndings20Charted;
  static const yatraOne = PartY.yatraOne;
  static const yellowtail = PartY.yellowtail;
  static const yeonSung = PartY.yeonSung;
  static const yesevaOne = PartY.yesevaOne;
  static const yesteryear = PartY.yesteryear;
  static const yomogi = PartY.yomogi;
  static const youngSerif = PartY.youngSerif;
  static const yrsa = PartY.yrsa;
  static const ysabeau = PartY.ysabeau;
  static const ysabeauInfant = PartY.ysabeauInfant;
  static const ysabeauOffice = PartY.ysabeauOffice;
  static const ysabeauSc = PartY.ysabeauSc;
  static const yujiBoku = PartY.yujiBoku;
  static const yujiHentaiganaAkari = PartY.yujiHentaiganaAkari;
  static const yujiHentaiganaAkebono = PartY.yujiHentaiganaAkebono;
  static const yujiMai = PartY.yujiMai;
  static const yujiSyuku = PartY.yujiSyuku;
  static const yuseiMagic = PartY.yuseiMagic;
  static const zcoolKuaiLe = PartZ.zcoolKuaiLe;
  static const zcoolQingKeHuangYou = PartZ.zcoolQingKeHuangYou;
  static const zcoolXiaoWei = PartZ.zcoolXiaoWei;
  static const zain = PartZ.zain;
  static const zenAntique = PartZ.zenAntique;
  static const zenAntiqueSoft = PartZ.zenAntiqueSoft;
  static const zenDots = PartZ.zenDots;
  static const zenKakuGothicAntique = PartZ.zenKakuGothicAntique;
  static const zenKakuGothicNew = PartZ.zenKakuGothicNew;
  static const zenKurenaido = PartZ.zenKurenaido;
  static const zenLoop = PartZ.zenLoop;
  static const zenMaruGothic = PartZ.zenMaruGothic;
  static const zenOldMincho = PartZ.zenOldMincho;
  static const zenTokyoZoo = PartZ.zenTokyoZoo;
  static const zeyada = PartZ.zeyada;
  static const zhiMangXing = PartZ.zhiMangXing;
  static const zillaSlab = PartZ.zillaSlab;
  static const zillaSlabHighlight = PartZ.zillaSlabHighlight;
}
