/* 8002824C 0002518C  94 21 FF F0 */ stwu r1, -0x10(r1)
/* 80028250 00025190  7C 08 02 A6 */ mflr r0
/* 80028254 00025194  90 01 00 14 */ stw r0, 0x14(r1)
/* 80028258 00025198  93 E1 00 0C */ stw r31, 0xc(r1)
/* 8002825C 0002519C  3C 60 80 3F */ lis r3, lbl_803F4E68@ha
/* 80028260 000251A0  3B E3 4E 68 */ addi r31, r3, lbl_803F4E68@l
/* 80028264 000251A4  38 7F 00 0C */ addi r3, r31, 0xc
/*.global stage_tgsc_data_class
/* 80028268 000251A8  3C 80 80 03 */ lis r4, stage_tgsc_data_class@ha
/*.global stage_tgsc_data_class*/
/* 8002826C 000251AC  38 84 84 B8 */ addi r4, r4, stage_tgsc_data_class@l
/*.global __dt__21stage_tgsc_data_classFv*/
/* 80028270 000251B0  3C A0 80 03 */ lis r5, __dt__21stage_tgsc_data_classFv@ha
/*.global __dt__21stage_tgsc_data_classFv*/
/* 80028274 000251B4  38 A5 84 7C */ addi r5, r5, __dt__21stage_tgsc_data_classFv@l
/* 80028278 000251B8  38 C0 00 24 */ li r6, 0x24
/* 8002827C 000251BC  38 E0 00 40 */ li r7, 0x40
/* 80028280 000251C0  38 63 00 04 */ addi r3, r3, 4
/* 80028284 000251C4  48 33 9A DD */ bl func_80361D60
/* 80028288 000251C8  38 7F 00 0C */ addi r3, r31, 0xc
/*.global __dt__19dStage_KeepDoorInfoFv*/
/* 8002828C 000251CC  3C 80 80 03 */ lis r4, __dt__19dStage_KeepDoorInfoFv@ha
/*.global __dt__19dStage_KeepDoorInfoFv*/
/* 80028290 000251D0  38 84 84 18 */ addi r4, r4, __dt__19dStage_KeepDoorInfoFv@l
/* 80028294 000251D4  38 BF 00 00 */ addi r5, r31, 0
/* 80028298 000251D8  48 33 99 8D */ bl func_80361C24
/* 8002829C 000251DC  38 7F 09 1C */ addi r3, r31, 0x91c
/*.global stage_tgsc_data_class*/
/* 800282A0 000251E0  3C 80 80 03 */ lis r4, stage_tgsc_data_class@ha
/*.global stage_tgsc_data_class*/
/* 800282A4 000251E4  38 84 84 B8 */ addi r4, r4, stage_tgsc_data_class@l
/*.global __dt__21stage_tgsc_data_classFv*/
/* 800282A8 000251E8  3C A0 80 03 */ lis r5, __dt__21stage_tgsc_data_classFv@ha
/*.global __dt__21stage_tgsc_data_classFv*/
/* 800282AC 000251EC  38 A5 84 7C */ addi r5, r5, __dt__21stage_tgsc_data_classFv@l
/* 800282B0 000251F0  38 C0 00 24 */ li r6, 0x24
/* 800282B4 000251F4  38 E0 00 40 */ li r7, 0x40
/* 800282B8 000251F8  38 63 00 04 */ addi r3, r3, 4
/* 800282BC 000251FC  48 33 9A A5 */ bl func_80361D60
/* 800282C0 00025200  38 7F 09 1C */ addi r3, r31, 0x91c
/*.global __dt__19dStage_KeepDoorInfoFv*/
/* 800282C4 00025204  3C 80 80 03 */ lis r4, __dt__19dStage_KeepDoorInfoFv@ha
/*.global __dt__19dStage_KeepDoorInfoFv*/
/* 800282C8 00025208  38 84 84 18 */ addi r4, r4, __dt__19dStage_KeepDoorInfoFv@l
/* 800282CC 0002520C  38 BF 09 10 */ addi r5, r31, 0x910
/* 800282D0 00025210  48 33 99 55 */ bl func_80361C24
/* 800282D4 00025214  3C 60 80 3F */ lis r3, lbl_803F6094@ha
/* 800282D8 00025218  38 63 60 94 */ addi r3, r3, lbl_803F6094@l
/*.global dStage_roomStatus_c*/
/* 800282DC 0002521C  3C 80 80 03 */ lis r4, dStage_roomStatus_c@ha
/*.global dStage_roomStatus_c*/
/* 800282E0 00025220  38 84 83 9C */ addi r4, r4, dStage_roomStatus_c@l
/*.global __dt__19dStage_roomStatus_cFv*/
/* 800282E4 00025224  3C A0 80 03 */ lis r5, __dt__19dStage_roomStatus_cFv@ha
/*.global __dt__19dStage_roomStatus_cFv*/
/* 800282E8 00025228  38 A5 83 60 */ addi r5, r5, __dt__19dStage_roomStatus_cFv@l
/* 800282EC 0002522C  38 C0 04 04 */ li r6, 0x404
/* 800282F0 00025230  38 E0 00 40 */ li r7, 0x40
/* 800282F4 00025234  48 33 9A 6D */ bl func_80361D60
/* 800282F8 00025238  38 60 00 00 */ li r3, 0
/*.global __arraydtor_5375*/
/* 800282FC 0002523C  3C 80 80 03 */ lis r4, __arraydtor_5375@ha
/*.global __arraydtor_5375*/
/* 80028300 00025240  38 84 83 28 */ addi r4, r4, __arraydtor_5375@l
/* 80028304 00025244  38 BF 12 20 */ addi r5, r31, 0x1220
/* 80028308 00025248  48 33 99 1D */ bl func_80361C24
/* 8002830C 0002524C  38 00 00 00 */ li r0, 0
/* 80028310 00025250  98 0D 87 F4 */ stb r0, lbl_80450D74-_SDA_BASE_(r13)
/* 80028314 00025254  83 E1 00 0C */ lwz r31, 0xc(r1)
/* 80028318 00025258  80 01 00 14 */ lwz r0, 0x14(r1)
/* 8002831C 0002525C  7C 08 03 A6 */ mtlr r0
/* 80028320 00025260  38 21 00 10 */ addi r1, r1, 0x10
/* 80028324 00025264  4E 80 00 20 */ blr