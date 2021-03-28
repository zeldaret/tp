lbl_8002824C:
/* 8002824C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80028250  7C 08 02 A6 */	mflr r0
/* 80028254  90 01 00 14 */	stw r0, 0x14(r1)
/* 80028258  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8002825C  3C 60 80 3F */	lis r3, lit_3926@ha
/* 80028260  3B E3 4E 68 */	addi r31, r3, lit_3926@l
/* 80028264  38 7F 00 0C */	addi r3, r31, 0xc
/* 80028268  3C 80 80 03 */	lis r4, __ct__21stage_tgsc_data_classFv@ha
/* 8002826C  38 84 84 B8 */	addi r4, r4, __ct__21stage_tgsc_data_classFv@l
/* 80028270  3C A0 80 03 */	lis r5, __dt__21stage_tgsc_data_classFv@ha
/* 80028274  38 A5 84 7C */	addi r5, r5, __dt__21stage_tgsc_data_classFv@l
/* 80028278  38 C0 00 24 */	li r6, 0x24
/* 8002827C  38 E0 00 40 */	li r7, 0x40
/* 80028280  38 63 00 04 */	addi r3, r3, 4
/* 80028284  48 33 9A DD */	bl __construct_array
/* 80028288  38 7F 00 0C */	addi r3, r31, 0xc
/* 8002828C  3C 80 80 03 */	lis r4, __dt__19dStage_KeepDoorInfoFv@ha
/* 80028290  38 84 84 18 */	addi r4, r4, __dt__19dStage_KeepDoorInfoFv@l
/* 80028294  38 BF 00 00 */	addi r5, r31, 0
/* 80028298  48 33 99 8D */	bl __register_global_object
/* 8002829C  38 7F 09 1C */	addi r3, r31, 0x91c
/* 800282A0  3C 80 80 03 */	lis r4, __ct__21stage_tgsc_data_classFv@ha
/* 800282A4  38 84 84 B8 */	addi r4, r4, __ct__21stage_tgsc_data_classFv@l
/* 800282A8  3C A0 80 03 */	lis r5, __dt__21stage_tgsc_data_classFv@ha
/* 800282AC  38 A5 84 7C */	addi r5, r5, __dt__21stage_tgsc_data_classFv@l
/* 800282B0  38 C0 00 24 */	li r6, 0x24
/* 800282B4  38 E0 00 40 */	li r7, 0x40
/* 800282B8  38 63 00 04 */	addi r3, r3, 4
/* 800282BC  48 33 9A A5 */	bl __construct_array
/* 800282C0  38 7F 09 1C */	addi r3, r31, 0x91c
/* 800282C4  3C 80 80 03 */	lis r4, __dt__19dStage_KeepDoorInfoFv@ha
/* 800282C8  38 84 84 18 */	addi r4, r4, __dt__19dStage_KeepDoorInfoFv@l
/* 800282CC  38 BF 09 10 */	addi r5, r31, 0x910
/* 800282D0  48 33 99 55 */	bl __register_global_object
/* 800282D4  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha
/* 800282D8  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l
/* 800282DC  3C 80 80 03 */	lis r4, __ct__19dStage_roomStatus_cFv@ha
/* 800282E0  38 84 83 9C */	addi r4, r4, __ct__19dStage_roomStatus_cFv@l
/* 800282E4  3C A0 80 03 */	lis r5, __dt__19dStage_roomStatus_cFv@ha
/* 800282E8  38 A5 83 60 */	addi r5, r5, __dt__19dStage_roomStatus_cFv@l
/* 800282EC  38 C0 04 04 */	li r6, 0x404
/* 800282F0  38 E0 00 40 */	li r7, 0x40
/* 800282F4  48 33 9A 6D */	bl __construct_array
/* 800282F8  38 60 00 00 */	li r3, 0
/* 800282FC  3C 80 80 03 */	lis r4, __arraydtor@ha
/* 80028300  38 84 83 28 */	addi r4, r4, __arraydtor@l
/* 80028304  38 BF 12 20 */	addi r5, r31, 0x1220
/* 80028308  48 33 99 1D */	bl __register_global_object
/* 8002830C  38 00 00 00 */	li r0, 0
/* 80028310  98 0D 87 F4 */	stb r0, m_roomDzs__20dStage_roomControl_c(r13)
/* 80028314  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80028318  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002831C  7C 08 03 A6 */	mtlr r0
/* 80028320  38 21 00 10 */	addi r1, r1, 0x10
/* 80028324  4E 80 00 20 */	blr 
