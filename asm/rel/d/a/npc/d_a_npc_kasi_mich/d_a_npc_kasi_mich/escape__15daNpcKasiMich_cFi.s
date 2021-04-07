lbl_80A28F74:
/* 80A28F74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80A28F78  7C 08 02 A6 */	mflr r0
/* 80A28F7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A28F80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80A28F84  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80A28F88  7C 7E 1B 78 */	mr r30, r3
/* 80A28F8C  3C 80 80 A3 */	lis r4, m__21daNpcKasiMich_Param_c@ha /* 0x80A2A04C@ha */
/* 80A28F90  3B E4 A0 4C */	addi r31, r4, m__21daNpcKasiMich_Param_c@l /* 0x80A2A04C@l */
/* 80A28F94  A8 03 14 04 */	lha r0, 0x1404(r3)
/* 80A28F98  2C 00 00 01 */	cmpwi r0, 1
/* 80A28F9C  41 82 00 6C */	beq lbl_80A29008
/* 80A28FA0  40 80 00 14 */	bge lbl_80A28FB4
/* 80A28FA4  2C 00 FF FF */	cmpwi r0, -1
/* 80A28FA8  41 82 00 C8 */	beq lbl_80A29070
/* 80A28FAC  40 80 00 14 */	bge lbl_80A28FC0
/* 80A28FB0  48 00 00 C0 */	b lbl_80A29070
lbl_80A28FB4:
/* 80A28FB4  2C 00 00 03 */	cmpwi r0, 3
/* 80A28FB8  40 80 00 B8 */	bge lbl_80A29070
/* 80A28FBC  48 00 00 9C */	b lbl_80A29058
lbl_80A28FC0:
/* 80A28FC0  38 80 00 08 */	li r4, 8
/* 80A28FC4  C0 3F 00 8C */	lfs f1, 0x8c(r31)
/* 80A28FC8  38 A0 00 00 */	li r5, 0
/* 80A28FCC  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A28FD0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A28FD4  7D 89 03 A6 */	mtctr r12
/* 80A28FD8  4E 80 04 21 */	bctrl 
/* 80A28FDC  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80A28FE0  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 80A28FE4  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 80A28FE8  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 80A28FEC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A28FF0  38 7F 00 00 */	addi r3, r31, 0
/* 80A28FF4  A8 03 00 6C */	lha r0, 0x6c(r3)
/* 80A28FF8  90 1E 14 30 */	stw r0, 0x1430(r30)
/* 80A28FFC  38 00 00 01 */	li r0, 1
/* 80A29000  B0 1E 14 04 */	sth r0, 0x1404(r30)
/* 80A29004  48 00 00 6C */	b lbl_80A29070
lbl_80A29008:
/* 80A29008  80 7E 14 30 */	lwz r3, 0x1430(r30)
/* 80A2900C  34 03 FF FF */	addic. r0, r3, -1
/* 80A29010  90 1E 14 30 */	stw r0, 0x1430(r30)
/* 80A29014  41 81 00 5C */	bgt lbl_80A29070
/* 80A29018  38 7F 00 00 */	addi r3, r31, 0
/* 80A2901C  C0 03 00 70 */	lfs f0, 0x70(r3)
/* 80A29020  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 80A29024  3C 60 00 05 */	lis r3, 0x0005 /* 0x000501D4@ha */
/* 80A29028  38 03 01 D4 */	addi r0, r3, 0x01D4 /* 0x000501D4@l */
/* 80A2902C  90 01 00 08 */	stw r0, 8(r1)
/* 80A29030  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80A29034  38 81 00 08 */	addi r4, r1, 8
/* 80A29038  38 A0 FF FF */	li r5, -1
/* 80A2903C  81 9E 0B 48 */	lwz r12, 0xb48(r30)
/* 80A29040  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A29044  7D 89 03 A6 */	mtctr r12
/* 80A29048  4E 80 04 21 */	bctrl 
/* 80A2904C  38 00 00 02 */	li r0, 2
/* 80A29050  B0 1E 14 04 */	sth r0, 0x1404(r30)
/* 80A29054  48 00 00 1C */	b lbl_80A29070
lbl_80A29058:
/* 80A29058  38 9E 14 48 */	addi r4, r30, 0x1448
/* 80A2905C  38 A0 10 00 */	li r5, 0x1000
/* 80A29060  48 00 04 45 */	bl _turn_pos__15daNpcKasiMich_cFRC4cXyzs
/* 80A29064  C0 1F 02 48 */	lfs f0, 0x248(r31)
/* 80A29068  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80A2906C  D0 03 00 18 */	stfs f0, 0x18(r3)
lbl_80A29070:
/* 80A29070  38 60 00 01 */	li r3, 1
/* 80A29074  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80A29078  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80A2907C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A29080  7C 08 03 A6 */	mtlr r0
/* 80A29084  38 21 00 20 */	addi r1, r1, 0x20
/* 80A29088  4E 80 00 20 */	blr 
