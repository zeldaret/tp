lbl_80A28CB8:
/* 80A28CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A28CBC  7C 08 02 A6 */	mflr r0
/* 80A28CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A28CC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A28CC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A28CCC  7C 7E 1B 78 */	mr r30, r3
/* 80A28CD0  3C 80 80 A3 */	lis r4, m__21daNpcKasiMich_Param_c@ha /* 0x80A2A04C@ha */
/* 80A28CD4  3B E4 A0 4C */	addi r31, r4, m__21daNpcKasiMich_Param_c@l /* 0x80A2A04C@l */
/* 80A28CD8  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A28CDC  2C 00 00 00 */	cmpwi r0, 0
/* 80A28CE0  41 82 00 18 */	beq lbl_80A28CF8
/* 80A28CE4  40 80 00 08 */	bge lbl_80A28CEC
/* 80A28CE8  48 00 00 8C */	b lbl_80A28D74
lbl_80A28CEC:
/* 80A28CEC  2C 00 00 02 */	cmpwi r0, 2
/* 80A28CF0  40 80 00 84 */	bge lbl_80A28D74
/* 80A28CF4  48 00 00 44 */	b lbl_80A28D38
lbl_80A28CF8:
/* 80A28CF8  38 80 00 00 */	li r4, 0
/* 80A28CFC  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A28D00  38 A0 00 00 */	li r5, 0
/* 80A28D04  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A28D08  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A28D0C  7D 89 03 A6 */	mtctr r12
/* 80A28D10  4E 80 04 21 */	bctrl 
/* 80A28D14  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A28D18  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A28D1C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A28D20  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A28D24  38 00 00 10 */	li r0, 0x10
/* 80A28D28  B0 1E 14 40 */	sth r0, 0x1440(r30)
/* 80A28D2C  38 00 00 01 */	li r0, 1
/* 80A28D30  B0 1E 14 04 */	sth r0, 0x1404(r30)
/* 80A28D34  48 00 00 40 */	b lbl_80A28D74
lbl_80A28D38:
/* 80A28D38  A8 7E 14 40 */	lha r3, 0x1440(r30)
/* 80A28D3C  2C 03 00 00 */	cmpwi r3, 0
/* 80A28D40  40 81 00 34 */	ble lbl_80A28D74
/* 80A28D44  38 03 FF FF */	addi r0, r3, -1
/* 80A28D48  B0 1E 14 40 */	sth r0, 0x1440(r30)
/* 80A28D4C  A8 1E 14 40 */	lha r0, 0x1440(r30)
/* 80A28D50  2C 00 00 00 */	cmpwi r0, 0
/* 80A28D54  40 82 00 14 */	bne lbl_80A28D68
/* 80A28D58  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80A28D5C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A28D60  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 80A28D64  48 00 00 10 */	b lbl_80A28D74
lbl_80A28D68:
/* 80A28D68  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A28D6C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A28D70  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80A28D74:
/* 80A28D74  38 60 00 01 */	li r3, 1
/* 80A28D78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A28D7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A28D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A28D84  7C 08 03 A6 */	mtlr r0
/* 80A28D88  38 21 00 10 */	addi r1, r1, 0x10
/* 80A28D8C  4E 80 00 20 */	blr 
