lbl_80D50C64:
/* 80D50C64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D50C68  7C 08 02 A6 */	mflr r0
/* 80D50C6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D50C70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D50C74  93 C1 00 08 */	stw r30, 8(r1)
/* 80D50C78  7C 7E 1B 78 */	mr r30, r3
/* 80D50C7C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80D50C80  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80D50C84  40 82 00 1C */	bne lbl_80D50CA0
/* 80D50C88  28 1E 00 00 */	cmplwi r30, 0
/* 80D50C8C  41 82 00 08 */	beq lbl_80D50C94
/* 80D50C90  4B 2C 7E D5 */	bl __ct__10fopAc_ac_cFv
lbl_80D50C94:
/* 80D50C94  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80D50C98  60 00 00 08 */	ori r0, r0, 8
/* 80D50C9C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80D50CA0:
/* 80D50CA0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D50CA4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D50CA8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80D50CAC  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 80D50CB0  3C 60 80 D5 */	lis r3, lit_3829@ha /* 0x80D51AD8@ha */
/* 80D50CB4  C0 03 1A D8 */	lfs f0, lit_3829@l(r3)  /* 0x80D51AD8@l */
/* 80D50CB8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D50CBC  40 80 00 0C */	bge lbl_80D50CC8
/* 80D50CC0  38 60 00 05 */	li r3, 5
/* 80D50CC4  48 00 00 54 */	b lbl_80D50D18
lbl_80D50CC8:
/* 80D50CC8  38 7E 05 74 */	addi r3, r30, 0x574
/* 80D50CCC  3C 80 80 D5 */	lis r4, l_arcName@ha /* 0x80D51B50@ha */
/* 80D50CD0  38 84 1B 50 */	addi r4, r4, l_arcName@l /* 0x80D51B50@l */
/* 80D50CD4  80 84 00 00 */	lwz r4, 0(r4)
/* 80D50CD8  4B 2D C1 E5 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D50CDC  7C 7F 1B 78 */	mr r31, r3
/* 80D50CE0  2C 1F 00 04 */	cmpwi r31, 4
/* 80D50CE4  40 82 00 30 */	bne lbl_80D50D14
/* 80D50CE8  7F C3 F3 78 */	mr r3, r30
/* 80D50CEC  3C 80 80 D5 */	lis r4, createSolidHeap__FP10fopAc_ac_c@ha /* 0x80D50AB8@ha */
/* 80D50CF0  38 84 0A B8 */	addi r4, r4, createSolidHeap__FP10fopAc_ac_c@l /* 0x80D50AB8@l */
/* 80D50CF4  38 A0 53 40 */	li r5, 0x5340
/* 80D50CF8  4B 2C 97 B9 */	bl fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D50CFC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D50D00  40 82 00 0C */	bne lbl_80D50D0C
/* 80D50D04  38 60 00 05 */	li r3, 5
/* 80D50D08  48 00 00 10 */	b lbl_80D50D18
lbl_80D50D0C:
/* 80D50D0C  7F C3 F3 78 */	mr r3, r30
/* 80D50D10  48 00 00 21 */	bl create_init__14daTagLv7Gate_cFv
lbl_80D50D14:
/* 80D50D14  7F E3 FB 78 */	mr r3, r31
lbl_80D50D18:
/* 80D50D18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D50D1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D50D20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D50D24  7C 08 03 A6 */	mtlr r0
/* 80D50D28  38 21 00 10 */	addi r1, r1, 0x10
/* 80D50D2C  4E 80 00 20 */	blr 
