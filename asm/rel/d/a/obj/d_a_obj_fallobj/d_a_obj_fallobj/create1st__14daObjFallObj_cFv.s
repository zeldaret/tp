lbl_80BE3C98:
/* 80BE3C98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE3C9C  7C 08 02 A6 */	mflr r0
/* 80BE3CA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE3CA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BE3CA8  7C 7F 1B 78 */	mr r31, r3
/* 80BE3CAC  38 00 00 01 */	li r0, 1
/* 80BE3CB0  98 03 05 D8 */	stb r0, 0x5d8(r3)
/* 80BE3CB4  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BE3CB8  3C 80 80 BE */	lis r4, l_arcName@ha /* 0x80BE4B20@ha */
/* 80BE3CBC  38 84 4B 20 */	addi r4, r4, l_arcName@l /* 0x80BE4B20@l */
/* 80BE3CC0  80 84 00 00 */	lwz r4, 0(r4)
/* 80BE3CC4  4B 44 91 F9 */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BE3CC8  7C 60 1B 78 */	mr r0, r3
/* 80BE3CCC  2C 00 00 04 */	cmpwi r0, 4
/* 80BE3CD0  40 82 00 3C */	bne lbl_80BE3D0C
/* 80BE3CD4  7F E3 FB 78 */	mr r3, r31
/* 80BE3CD8  3C 80 80 BE */	lis r4, l_arcName@ha /* 0x80BE4B20@ha */
/* 80BE3CDC  38 84 4B 20 */	addi r4, r4, l_arcName@l /* 0x80BE4B20@l */
/* 80BE3CE0  80 84 00 00 */	lwz r4, 0(r4)
/* 80BE3CE4  38 A0 00 07 */	li r5, 7
/* 80BE3CE8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075A24@ha */
/* 80BE3CEC  38 C6 5A 24 */	addi r6, r6, dBgS_MoveBGProc_Typical__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075A24@l */
/* 80BE3CF0  38 E0 27 00 */	li r7, 0x2700
/* 80BE3CF4  39 00 00 00 */	li r8, 0
/* 80BE3CF8  4B 49 4A C5 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BE3CFC  7C 60 1B 78 */	mr r0, r3
/* 80BE3D00  2C 00 00 05 */	cmpwi r0, 5
/* 80BE3D04  40 82 00 08 */	bne lbl_80BE3D0C
/* 80BE3D08  48 00 00 08 */	b lbl_80BE3D10
lbl_80BE3D0C:
/* 80BE3D0C  7C 03 03 78 */	mr r3, r0
lbl_80BE3D10:
/* 80BE3D10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BE3D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE3D18  7C 08 03 A6 */	mtlr r0
/* 80BE3D1C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE3D20  4E 80 00 20 */	blr 
