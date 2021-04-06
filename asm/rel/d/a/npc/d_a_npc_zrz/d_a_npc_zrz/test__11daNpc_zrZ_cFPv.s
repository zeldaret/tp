lbl_80B9A29C:
/* 80B9A29C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9A2A0  7C 08 02 A6 */	mflr r0
/* 80B9A2A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9A2A8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9A2AC  7C 7F 1B 78 */	mr r31, r3
/* 80B9A2B0  A0 03 14 4A */	lhz r0, 0x144a(r3)
/* 80B9A2B4  2C 00 00 02 */	cmpwi r0, 2
/* 80B9A2B8  41 82 00 38 */	beq lbl_80B9A2F0
/* 80B9A2BC  40 80 00 AC */	bge lbl_80B9A368
/* 80B9A2C0  2C 00 00 00 */	cmpwi r0, 0
/* 80B9A2C4  41 82 00 0C */	beq lbl_80B9A2D0
/* 80B9A2C8  48 00 00 A0 */	b lbl_80B9A368
/* 80B9A2CC  48 00 00 9C */	b lbl_80B9A368
lbl_80B9A2D0:
/* 80B9A2D0  3C 60 80 BA */	lis r3, lit_4522@ha /* 0x80B9B084@ha */
/* 80B9A2D4  C0 03 B0 84 */	lfs f0, lit_4522@l(r3)  /* 0x80B9B084@l */
/* 80B9A2D8  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 80B9A2DC  D0 1F 04 F8 */	stfs f0, 0x4f8(r31)
/* 80B9A2E0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 80B9A2E4  D0 1F 05 00 */	stfs f0, 0x500(r31)
/* 80B9A2E8  38 00 00 02 */	li r0, 2
/* 80B9A2EC  B0 1F 14 4A */	sth r0, 0x144a(r31)
lbl_80B9A2F0:
/* 80B9A2F0  3C 60 80 BA */	lis r3, m__17daNpc_zrZ_Param_c@ha /* 0x80B9AFEC@ha */
/* 80B9A2F4  38 A3 AF EC */	addi r5, r3, m__17daNpc_zrZ_Param_c@l /* 0x80B9AFEC@l */
/* 80B9A2F8  A8 85 00 64 */	lha r4, 0x64(r5)
/* 80B9A2FC  A8 1F 09 DE */	lha r0, 0x9de(r31)
/* 80B9A300  7C 04 00 00 */	cmpw r4, r0
/* 80B9A304  41 82 00 1C */	beq lbl_80B9A320
/* 80B9A308  7F E3 FB 78 */	mr r3, r31
/* 80B9A30C  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B9A310  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B9A314  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B9A318  7D 89 03 A6 */	mtctr r12
/* 80B9A31C  4E 80 04 21 */	bctrl 
lbl_80B9A320:
/* 80B9A320  7F E3 FB 78 */	mr r3, r31
/* 80B9A324  3C 80 80 BA */	lis r4, m__17daNpc_zrZ_Param_c@ha /* 0x80B9AFEC@ha */
/* 80B9A328  38 A4 AF EC */	addi r5, r4, m__17daNpc_zrZ_Param_c@l /* 0x80B9AFEC@l */
/* 80B9A32C  A8 85 00 66 */	lha r4, 0x66(r5)
/* 80B9A330  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B9A334  38 A0 00 00 */	li r5, 0
/* 80B9A338  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 80B9A33C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B9A340  7D 89 03 A6 */	mtctr r12
/* 80B9A344  4E 80 04 21 */	bctrl 
/* 80B9A348  7F E3 FB 78 */	mr r3, r31
/* 80B9A34C  3C 80 80 BA */	lis r4, m__17daNpc_zrZ_Param_c@ha /* 0x80B9AFEC@ha */
/* 80B9A350  38 84 AF EC */	addi r4, r4, m__17daNpc_zrZ_Param_c@l /* 0x80B9AFEC@l */
/* 80B9A354  A8 84 00 68 */	lha r4, 0x68(r4)
/* 80B9A358  4B FF CB 25 */	bl setLookMode__11daNpc_zrZ_cFi
/* 80B9A35C  38 00 00 00 */	li r0, 0
/* 80B9A360  B0 1F 09 E6 */	sth r0, 0x9e6(r31)
/* 80B9A364  90 1F 05 5C */	stw r0, 0x55c(r31)
lbl_80B9A368:
/* 80B9A368  38 60 00 01 */	li r3, 1
/* 80B9A36C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9A370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9A374  7C 08 03 A6 */	mtlr r0
/* 80B9A378  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9A37C  4E 80 00 20 */	blr 
