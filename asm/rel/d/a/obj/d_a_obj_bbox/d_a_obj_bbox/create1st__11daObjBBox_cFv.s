lbl_80BACEC0:
/* 80BACEC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BACEC4  7C 08 02 A6 */	mflr r0
/* 80BACEC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BACECC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BACED0  93 C1 00 08 */	stw r30, 8(r1)
/* 80BACED4  7C 7F 1B 78 */	mr r31, r3
/* 80BACED8  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80BACEDC  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80BACEE0  40 82 00 B4 */	bne lbl_80BACF94
/* 80BACEE4  7F E0 FB 79 */	or. r0, r31, r31
/* 80BACEE8  41 82 00 A0 */	beq lbl_80BACF88
/* 80BACEEC  7C 1E 03 78 */	mr r30, r0
/* 80BACEF0  4B 4C B7 34 */	b __ct__16dBgS_MoveBgActorFv
/* 80BACEF4  3C 60 80 BB */	lis r3, __vt__11daObjBBox_c@ha
/* 80BACEF8  38 03 D5 40 */	addi r0, r3, __vt__11daObjBBox_c@l
/* 80BACEFC  90 1E 05 9C */	stw r0, 0x59c(r30)
/* 80BACF00  3C 60 80 3C */	lis r3, __vt__9cCcD_Stts@ha
/* 80BACF04  38 03 37 28 */	addi r0, r3, __vt__9cCcD_Stts@l
/* 80BACF08  90 1E 05 C4 */	stw r0, 0x5c4(r30)
/* 80BACF0C  38 7E 05 C8 */	addi r3, r30, 0x5c8
/* 80BACF10  4B 4D 68 50 */	b __ct__10dCcD_GSttsFv
/* 80BACF14  3C 60 80 3B */	lis r3, __vt__9dCcD_Stts@ha
/* 80BACF18  38 63 C2 E4 */	addi r3, r3, __vt__9dCcD_Stts@l
/* 80BACF1C  90 7E 05 C4 */	stw r3, 0x5c4(r30)
/* 80BACF20  38 03 00 20 */	addi r0, r3, 0x20
/* 80BACF24  90 1E 05 C8 */	stw r0, 0x5c8(r30)
/* 80BACF28  3B DE 05 E8 */	addi r30, r30, 0x5e8
/* 80BACF2C  7F C3 F3 78 */	mr r3, r30
/* 80BACF30  4B 4D 6A F8 */	b __ct__12dCcD_GObjInfFv
/* 80BACF34  3C 60 80 3C */	lis r3, __vt__14cCcD_ShapeAttr@ha
/* 80BACF38  38 03 36 D0 */	addi r0, r3, __vt__14cCcD_ShapeAttr@l
/* 80BACF3C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BACF40  3C 60 80 BB */	lis r3, __vt__8cM3dGAab@ha
/* 80BACF44  38 03 D5 34 */	addi r0, r3, __vt__8cM3dGAab@l
/* 80BACF48  90 1E 01 1C */	stw r0, 0x11c(r30)
/* 80BACF4C  3C 60 80 BB */	lis r3, __vt__8cM3dGCyl@ha
/* 80BACF50  38 03 D5 28 */	addi r0, r3, __vt__8cM3dGCyl@l
/* 80BACF54  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BACF58  3C 60 80 3C */	lis r3, __vt__12cCcD_CylAttr@ha
/* 80BACF5C  38 63 35 A4 */	addi r3, r3, __vt__12cCcD_CylAttr@l
/* 80BACF60  90 7E 01 20 */	stw r3, 0x120(r30)
/* 80BACF64  38 03 00 58 */	addi r0, r3, 0x58
/* 80BACF68  90 1E 01 38 */	stw r0, 0x138(r30)
/* 80BACF6C  3C 60 80 3B */	lis r3, __vt__8dCcD_Cyl@ha
/* 80BACF70  38 63 C0 50 */	addi r3, r3, __vt__8dCcD_Cyl@l
/* 80BACF74  90 7E 00 3C */	stw r3, 0x3c(r30)
/* 80BACF78  38 03 00 2C */	addi r0, r3, 0x2c
/* 80BACF7C  90 1E 01 20 */	stw r0, 0x120(r30)
/* 80BACF80  38 03 00 84 */	addi r0, r3, 0x84
/* 80BACF84  90 1E 01 38 */	stw r0, 0x138(r30)
lbl_80BACF88:
/* 80BACF88  80 1F 04 A0 */	lwz r0, 0x4a0(r31)
/* 80BACF8C  60 00 00 08 */	ori r0, r0, 8
/* 80BACF90  90 1F 04 A0 */	stw r0, 0x4a0(r31)
lbl_80BACF94:
/* 80BACF94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BACF98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BACF9C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BACFA0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BACFA4  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BACFA8  7C 05 07 74 */	extsb r5, r0
/* 80BACFAC  4B 48 83 B4 */	b isSwitch__10dSv_info_cCFii
/* 80BACFB0  2C 03 00 00 */	cmpwi r3, 0
/* 80BACFB4  41 82 00 0C */	beq lbl_80BACFC0
/* 80BACFB8  38 60 00 05 */	li r3, 5
/* 80BACFBC  48 00 00 5C */	b lbl_80BAD018
lbl_80BACFC0:
/* 80BACFC0  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BACFC4  3C 80 80 BB */	lis r4, l_arcName@ha
/* 80BACFC8  38 84 D4 D4 */	addi r4, r4, l_arcName@l
/* 80BACFCC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BACFD0  4B 47 FE EC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BACFD4  7C 60 1B 78 */	mr r0, r3
/* 80BACFD8  2C 00 00 04 */	cmpwi r0, 4
/* 80BACFDC  40 82 00 38 */	bne lbl_80BAD014
/* 80BACFE0  7F E3 FB 78 */	mr r3, r31
/* 80BACFE4  3C 80 80 BB */	lis r4, l_arcName@ha
/* 80BACFE8  38 84 D4 D4 */	addi r4, r4, l_arcName@l
/* 80BACFEC  80 84 00 00 */	lwz r4, 0(r4)
/* 80BACFF0  38 A0 00 07 */	li r5, 7
/* 80BACFF4  38 C0 00 00 */	li r6, 0
/* 80BACFF8  38 E0 0C 00 */	li r7, 0xc00
/* 80BACFFC  39 00 00 00 */	li r8, 0
/* 80BAD000  4B 4C B7 BC */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BAD004  7C 60 1B 78 */	mr r0, r3
/* 80BAD008  2C 00 00 05 */	cmpwi r0, 5
/* 80BAD00C  40 82 00 08 */	bne lbl_80BAD014
/* 80BAD010  48 00 00 08 */	b lbl_80BAD018
lbl_80BAD014:
/* 80BAD014  7C 03 03 78 */	mr r3, r0
lbl_80BAD018:
/* 80BAD018  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BAD01C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80BAD020  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BAD024  7C 08 03 A6 */	mtlr r0
/* 80BAD028  38 21 00 10 */	addi r1, r1, 0x10
/* 80BAD02C  4E 80 00 20 */	blr 
