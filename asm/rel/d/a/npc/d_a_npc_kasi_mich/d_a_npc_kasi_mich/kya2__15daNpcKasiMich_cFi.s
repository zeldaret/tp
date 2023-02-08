lbl_80A28D90:
/* 80A28D90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A28D94  7C 08 02 A6 */	mflr r0
/* 80A28D98  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A28D9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A28DA0  93 C1 00 08 */	stw r30, 8(r1)
/* 80A28DA4  7C 7E 1B 78 */	mr r30, r3
/* 80A28DA8  3C 80 80 A3 */	lis r4, m__21daNpcKasiMich_Param_c@ha /* 0x80A2A04C@ha */
/* 80A28DAC  3B E4 A0 4C */	addi r31, r4, m__21daNpcKasiMich_Param_c@l /* 0x80A2A04C@l */
/* 80A28DB0  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A28DB4  2C 00 00 00 */	cmpwi r0, 0
/* 80A28DB8  41 82 00 10 */	beq lbl_80A28DC8
/* 80A28DBC  40 80 00 50 */	bge lbl_80A28E0C
/* 80A28DC0  48 00 00 4C */	b lbl_80A28E0C
/* 80A28DC4  48 00 00 48 */	b lbl_80A28E0C
lbl_80A28DC8:
/* 80A28DC8  38 80 00 00 */	li r4, 0
/* 80A28DCC  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A28DD0  38 A0 00 00 */	li r5, 0
/* 80A28DD4  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A28DD8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A28DDC  7D 89 03 A6 */	mtctr r12
/* 80A28DE0  4E 80 04 21 */	bctrl 
/* 80A28DE4  7F C3 F3 78 */	mr r3, r30
/* 80A28DE8  38 80 00 00 */	li r4, 0
/* 80A28DEC  4B FF ED 41 */	bl setLookMode__15daNpcKasiMich_cFi
/* 80A28DF0  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A28DF4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A28DF8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A28DFC  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A28E00  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A28E04  38 00 00 01 */	li r0, 1
/* 80A28E08  B0 1E 14 04 */	sth r0, 0x1404(r30)
lbl_80A28E0C:
/* 80A28E0C  38 60 00 01 */	li r3, 1
/* 80A28E10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A28E14  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A28E18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A28E1C  7C 08 03 A6 */	mtlr r0
/* 80A28E20  38 21 00 10 */	addi r1, r1, 0x10
/* 80A28E24  4E 80 00 20 */	blr 
