lbl_8059DAF4:
/* 8059DAF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059DAF8  7C 08 02 A6 */	mflr r0
/* 8059DAFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059DB00  39 61 00 20 */	addi r11, r1, 0x20
/* 8059DB04  4B DC 46 D9 */	bl _savegpr_29
/* 8059DB08  7C 7F 1B 78 */	mr r31, r3
/* 8059DB0C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 8059DB10  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 8059DB14  40 82 00 D0 */	bne lbl_8059DBE4
/* 8059DB18  7F E0 FB 79 */	or. r0, r31, r31
/* 8059DB1C  41 82 00 BC */	beq lbl_8059DBD8
/* 8059DB20  7C 1E 03 78 */	mr r30, r0
/* 8059DB24  4B A7 B0 41 */	bl __ct__10fopAc_ac_cFv
/* 8059DB28  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha /* 0x803C3728@ha */
/* 8059DB2C  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l /* 0x803C3728@l */
/* 8059DB30  90 1E 05 CC */	stw r0, 0x5cc(r30)
/* 8059DB34  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8059DB38  4B AE 5C 29 */	bl __ct__10dCcD_GSttsFv
/* 8059DB3C  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha /* 0x803AC2E4@ha */
/* 8059DB40  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l /* 0x803AC2E4@l */
/* 8059DB44  90 7E 05 CC */	stw r3, 0x5cc(r30)
/* 8059DB48  38 03 00 20 */	addi r0, r3, 0x20
/* 8059DB4C  90 1E 05 D0 */	stw r0, 0x5d0(r30)
/* 8059DB50  3B BE 05 F0 */	addi r29, r30, 0x5f0
/* 8059DB54  7F A3 EB 78 */	mr r3, r29
/* 8059DB58  4B AE 5E D1 */	bl __ct__12dCcD_GObjInfFv
/* 8059DB5C  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha /* 0x803C36D0@ha */
/* 8059DB60  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l /* 0x803C36D0@l */
/* 8059DB64  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8059DB68  3C 60 80 5A */	lis r3, __vt__8cM3dGAab@ha /* 0x8059E088@ha */
/* 8059DB6C  38 03 E0 88 */	addi r0, r3, __vt__8cM3dGAab@l /* 0x8059E088@l */
/* 8059DB70  90 1D 01 1C */	stw r0, 0x11c(r29)
/* 8059DB74  3C 60 80 5A */	lis r3, __vt__8cM3dGCyl@ha /* 0x8059E094@ha */
/* 8059DB78  38 03 E0 94 */	addi r0, r3, __vt__8cM3dGCyl@l /* 0x8059E094@l */
/* 8059DB7C  90 1D 01 38 */	stw r0, 0x138(r29)
/* 8059DB80  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha /* 0x803C35A4@ha */
/* 8059DB84  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l /* 0x803C35A4@l */
/* 8059DB88  90 7D 01 20 */	stw r3, 0x120(r29)
/* 8059DB8C  38 03 00 58 */	addi r0, r3, 0x58
/* 8059DB90  90 1D 01 38 */	stw r0, 0x138(r29)
/* 8059DB94  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha /* 0x803AC050@ha */
/* 8059DB98  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l /* 0x803AC050@l */
/* 8059DB9C  90 7D 00 3C */	stw r3, 0x3c(r29)
/* 8059DBA0  38 03 00 2C */	addi r0, r3, 0x2c
/* 8059DBA4  90 1D 01 20 */	stw r0, 0x120(r29)
/* 8059DBA8  38 03 00 84 */	addi r0, r3, 0x84
/* 8059DBAC  90 1D 01 38 */	stw r0, 0x138(r29)
/* 8059DBB0  38 7E 07 2C */	addi r3, r30, 0x72c
/* 8059DBB4  4B CC A4 C1 */	bl __ct__13cBgS_PolyInfoFv
/* 8059DBB8  38 7E 07 4C */	addi r3, r30, 0x74c
/* 8059DBBC  3C 80 80 5A */	lis r4, __ct__5csXyzFv@ha /* 0x8059DC88@ha */
/* 8059DBC0  38 84 DC 88 */	addi r4, r4, __ct__5csXyzFv@l /* 0x8059DC88@l */
/* 8059DBC4  3C A0 80 5A */	lis r5, __dt__5csXyzFv@ha /* 0x8059D2E4@ha */
/* 8059DBC8  38 A5 D2 E4 */	addi r5, r5, __dt__5csXyzFv@l /* 0x8059D2E4@l */
/* 8059DBCC  38 C0 00 06 */	li r6, 6
/* 8059DBD0  38 E0 00 03 */	li r7, 3
/* 8059DBD4  4B DC 41 8D */	bl __construct_array
lbl_8059DBD8:
/* 8059DBD8  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 8059DBDC  60 00 00 08 */	ori r0, r0, 8
/* 8059DBE0  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_8059DBE4:
/* 8059DBE4  88 1F 04 99 */	lbz r0, 0x499(r31)
/* 8059DBE8  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 8059DBEC  2C 00 00 01 */	cmpwi r0, 1
/* 8059DBF0  41 82 00 24 */	beq lbl_8059DC14
/* 8059DBF4  40 80 00 2C */	bge lbl_8059DC20
/* 8059DBF8  2C 00 00 00 */	cmpwi r0, 0
/* 8059DBFC  40 80 00 08 */	bge lbl_8059DC04
/* 8059DC00  48 00 00 20 */	b lbl_8059DC20
lbl_8059DC04:
/* 8059DC04  3C 60 80 5A */	lis r3, l_arcName1@ha /* 0x8059DF88@ha */
/* 8059DC08  80 03 DF 88 */	lwz r0, l_arcName1@l(r3)  /* 0x8059DF88@l */
/* 8059DC0C  90 1F 07 60 */	stw r0, 0x760(r31)
/* 8059DC10  48 00 00 10 */	b lbl_8059DC20
lbl_8059DC14:
/* 8059DC14  3C 60 80 5A */	lis r3, l_arcName2@ha /* 0x8059DF8C@ha */
/* 8059DC18  80 03 DF 8C */	lwz r0, l_arcName2@l(r3)  /* 0x8059DF8C@l */
/* 8059DC1C  90 1F 07 60 */	stw r0, 0x760(r31)
lbl_8059DC20:
/* 8059DC20  38 7F 05 A4 */	addi r3, r31, 0x5a4
/* 8059DC24  80 9F 07 60 */	lwz r4, 0x760(r31)
/* 8059DC28  4B A8 F2 95 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 8059DC2C  7C 7E 1B 78 */	mr r30, r3
/* 8059DC30  2C 1E 00 04 */	cmpwi r30, 4
/* 8059DC34  40 82 00 38 */	bne lbl_8059DC6C
/* 8059DC38  7F E3 FB 78 */	mr r3, r31
/* 8059DC3C  3C 80 80 5A */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha /* 0x8059D520@ha */
/* 8059DC40  38 84 D5 20 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l /* 0x8059D520@l */
/* 8059DC44  38 A0 10 80 */	li r5, 0x1080
/* 8059DC48  4B A7 C8 69 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 8059DC4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8059DC50  40 82 00 0C */	bne lbl_8059DC5C
/* 8059DC54  3B C0 00 05 */	li r30, 5
/* 8059DC58  48 00 00 14 */	b lbl_8059DC6C
lbl_8059DC5C:
/* 8059DC5C  7F E3 FB 78 */	mr r3, r31
/* 8059DC60  4B FF F2 1D */	bl create_init__15daObjYobikusa_cFv
/* 8059DC64  38 1F 05 74 */	addi r0, r31, 0x574
/* 8059DC68  90 1F 05 04 */	stw r0, 0x504(r31)
lbl_8059DC6C:
/* 8059DC6C  7F C3 F3 78 */	mr r3, r30
/* 8059DC70  39 61 00 20 */	addi r11, r1, 0x20
/* 8059DC74  4B DC 45 B5 */	bl _restgpr_29
/* 8059DC78  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059DC7C  7C 08 03 A6 */	mtlr r0
/* 8059DC80  38 21 00 20 */	addi r1, r1, 0x20
/* 8059DC84  4E 80 00 20 */	blr 
