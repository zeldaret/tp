lbl_80A28E28:
/* 80A28E28  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A28E2C  7C 08 02 A6 */	mflr r0
/* 80A28E30  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A28E34  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A28E38  2C 00 00 00 */	cmpwi r0, 0
/* 80A28E3C  41 82 00 18 */	beq lbl_80A28E54
/* 80A28E40  40 80 00 08 */	bge lbl_80A28E48
/* 80A28E44  48 00 00 A4 */	b lbl_80A28EE8
lbl_80A28E48:
/* 80A28E48  2C 00 00 02 */	cmpwi r0, 2
/* 80A28E4C  40 80 00 9C */	bge lbl_80A28EE8
/* 80A28E50  48 00 00 48 */	b lbl_80A28E98
lbl_80A28E54:
/* 80A28E54  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80A28E58  2C 00 00 00 */	cmpwi r0, 0
/* 80A28E5C  41 82 00 30 */	beq lbl_80A28E8C
/* 80A28E60  3C 80 80 A3 */	lis r4, lit_5201@ha
/* 80A28E64  38 A4 A6 30 */	addi r5, r4, lit_5201@l
/* 80A28E68  80 85 00 00 */	lwz r4, 0(r5)
/* 80A28E6C  80 05 00 04 */	lwz r0, 4(r5)
/* 80A28E70  90 81 00 14 */	stw r4, 0x14(r1)
/* 80A28E74  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A28E78  80 05 00 08 */	lwz r0, 8(r5)
/* 80A28E7C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A28E80  38 81 00 14 */	addi r4, r1, 0x14
/* 80A28E84  4B FF EC 01 */	bl setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i
/* 80A28E88  48 00 00 60 */	b lbl_80A28EE8
lbl_80A28E8C:
/* 80A28E8C  38 00 00 01 */	li r0, 1
/* 80A28E90  B0 03 14 04 */	sth r0, 0x1404(r3)
/* 80A28E94  48 00 00 54 */	b lbl_80A28EE8
lbl_80A28E98:
/* 80A28E98  80 83 05 68 */	lwz r4, 0x568(r3)
/* 80A28E9C  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80A28EA0  3C 80 80 A3 */	lis r4, lit_5219@ha
/* 80A28EA4  C0 04 A2 90 */	lfs f0, lit_5219@l(r4)
/* 80A28EA8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80A28EAC  41 82 00 14 */	beq lbl_80A28EC0
/* 80A28EB0  3C 80 80 A3 */	lis r4, lit_4247@ha
/* 80A28EB4  C0 04 A0 D0 */	lfs f0, lit_4247@l(r4)
/* 80A28EB8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80A28EBC  40 82 00 2C */	bne lbl_80A28EE8
lbl_80A28EC0:
/* 80A28EC0  3C 80 80 A3 */	lis r4, lit_5209@ha
/* 80A28EC4  38 A4 A6 3C */	addi r5, r4, lit_5209@l
/* 80A28EC8  80 85 00 00 */	lwz r4, 0(r5)
/* 80A28ECC  80 05 00 04 */	lwz r0, 4(r5)
/* 80A28ED0  90 81 00 08 */	stw r4, 8(r1)
/* 80A28ED4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A28ED8  80 05 00 08 */	lwz r0, 8(r5)
/* 80A28EDC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A28EE0  38 81 00 08 */	addi r4, r1, 8
/* 80A28EE4  4B FF EB A1 */	bl setAction__15daNpcKasiMich_cFM15daNpcKasiMich_cFPCvPvi_i
lbl_80A28EE8:
/* 80A28EE8  38 60 00 01 */	li r3, 1
/* 80A28EEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A28EF0  7C 08 03 A6 */	mtlr r0
/* 80A28EF4  38 21 00 20 */	addi r1, r1, 0x20
/* 80A28EF8  4E 80 00 20 */	blr 
