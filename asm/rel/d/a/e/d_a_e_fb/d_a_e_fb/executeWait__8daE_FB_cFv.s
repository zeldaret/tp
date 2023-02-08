lbl_806B6F40:
/* 806B6F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806B6F44  7C 08 02 A6 */	mflr r0
/* 806B6F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 806B6F4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806B6F50  93 C1 00 08 */	stw r30, 8(r1)
/* 806B6F54  7C 7F 1B 78 */	mr r31, r3
/* 806B6F58  3C 60 80 6C */	lis r3, lit_3662@ha /* 0x806B8F8C@ha */
/* 806B6F5C  3B C3 8F 8C */	addi r30, r3, lit_3662@l /* 0x806B8F8C@l */
/* 806B6F60  A8 7F 06 80 */	lha r3, 0x680(r31)
/* 806B6F64  2C 03 00 00 */	cmpwi r3, 0
/* 806B6F68  41 82 00 0C */	beq lbl_806B6F74
/* 806B6F6C  38 03 FF FF */	addi r0, r3, -1
/* 806B6F70  B0 1F 06 80 */	sth r0, 0x680(r31)
lbl_806B6F74:
/* 806B6F74  80 1F 06 6C */	lwz r0, 0x66c(r31)
/* 806B6F78  2C 00 00 01 */	cmpwi r0, 1
/* 806B6F7C  41 82 00 58 */	beq lbl_806B6FD4
/* 806B6F80  40 80 00 10 */	bge lbl_806B6F90
/* 806B6F84  2C 00 00 00 */	cmpwi r0, 0
/* 806B6F88  40 80 00 14 */	bge lbl_806B6F9C
/* 806B6F8C  48 00 01 50 */	b lbl_806B70DC
lbl_806B6F90:
/* 806B6F90  2C 00 00 03 */	cmpwi r0, 3
/* 806B6F94  40 80 01 48 */	bge lbl_806B70DC
/* 806B6F98  48 00 00 14 */	b lbl_806B6FAC
lbl_806B6F9C:
/* 806B6F9C  3C 60 80 6C */	lis r3, l_HIO@ha /* 0x806B91FC@ha */
/* 806B6FA0  38 63 91 FC */	addi r3, r3, l_HIO@l /* 0x806B91FC@l */
/* 806B6FA4  A8 03 00 10 */	lha r0, 0x10(r3)
/* 806B6FA8  B0 1F 06 80 */	sth r0, 0x680(r31)
lbl_806B6FAC:
/* 806B6FAC  7F E3 FB 78 */	mr r3, r31
/* 806B6FB0  38 80 00 08 */	li r4, 8
/* 806B6FB4  38 A0 00 02 */	li r5, 2
/* 806B6FB8  C0 3E 00 20 */	lfs f1, 0x20(r30)
/* 806B6FBC  C0 5E 00 14 */	lfs f2, 0x14(r30)
/* 806B6FC0  4B FF F8 21 */	bl setBck__8daE_FB_cFiUcff
/* 806B6FC4  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 806B6FC8  B0 1F 06 94 */	sth r0, 0x694(r31)
/* 806B6FCC  38 00 00 01 */	li r0, 1
/* 806B6FD0  90 1F 06 6C */	stw r0, 0x66c(r31)
lbl_806B6FD4:
/* 806B6FD4  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 806B6FD8  28 00 00 01 */	cmplwi r0, 1
/* 806B6FDC  40 82 00 7C */	bne lbl_806B7058
/* 806B6FE0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B6FE4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B6FE8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806B6FEC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806B6FF0  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806B6FF4  EC 40 08 28 */	fsubs f2, f0, f1
/* 806B6FF8  C0 3E 00 24 */	lfs f1, 0x24(r30)
/* 806B6FFC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 806B7000  41 81 00 DC */	bgt lbl_806B70DC
/* 806B7004  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 806B7008  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 806B700C  41 80 00 D0 */	blt lbl_806B70DC
/* 806B7010  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 806B7014  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806B7018  4C 40 13 82 */	cror 2, 0, 2
/* 806B701C  40 82 00 18 */	bne lbl_806B7034
/* 806B7020  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 806B7024  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 806B7028  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B702C  41 81 00 B0 */	bgt lbl_806B70DC
/* 806B7030  48 00 00 14 */	b lbl_806B7044
lbl_806B7034:
/* 806B7034  C0 23 04 D0 */	lfs f1, 0x4d0(r3)
/* 806B7038  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 806B703C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B7040  41 80 00 9C */	blt lbl_806B70DC
lbl_806B7044:
/* 806B7044  7F E3 FB 78 */	mr r3, r31
/* 806B7048  38 80 00 01 */	li r4, 1
/* 806B704C  38 A0 00 00 */	li r5, 0
/* 806B7050  4B FF F8 3D */	bl setActionMode__8daE_FB_cFii
/* 806B7054  48 00 00 88 */	b lbl_806B70DC
lbl_806B7058:
/* 806B7058  7F E3 FB 78 */	mr r3, r31
/* 806B705C  4B FF FD 99 */	bl search_check__8daE_FB_cFv
/* 806B7060  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B7064  41 82 00 78 */	beq lbl_806B70DC
/* 806B7068  A8 1F 06 80 */	lha r0, 0x680(r31)
/* 806B706C  2C 00 00 00 */	cmpwi r0, 0
/* 806B7070  40 82 00 6C */	bne lbl_806B70DC
/* 806B7074  88 1F 06 A0 */	lbz r0, 0x6a0(r31)
/* 806B7078  28 00 00 00 */	cmplwi r0, 0
/* 806B707C  40 82 00 18 */	bne lbl_806B7094
/* 806B7080  7F E3 FB 78 */	mr r3, r31
/* 806B7084  4B FF FC 9D */	bl mBgLineCheck__8daE_FB_cFv
/* 806B7088  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806B708C  40 82 00 50 */	bne lbl_806B70DC
/* 806B7090  48 00 00 3C */	b lbl_806B70CC
lbl_806B7094:
/* 806B7094  28 00 00 02 */	cmplwi r0, 2
/* 806B7098  40 82 00 34 */	bne lbl_806B70CC
/* 806B709C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806B70A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806B70A4  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 806B70A8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 806B70AC  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 806B70B0  EC 20 08 28 */	fsubs f1, f0, f1
/* 806B70B4  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 806B70B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B70BC  41 81 00 20 */	bgt lbl_806B70DC
/* 806B70C0  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 806B70C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806B70C8  41 80 00 14 */	blt lbl_806B70DC
lbl_806B70CC:
/* 806B70CC  7F E3 FB 78 */	mr r3, r31
/* 806B70D0  38 80 00 01 */	li r4, 1
/* 806B70D4  38 A0 00 00 */	li r5, 0
/* 806B70D8  4B FF F7 B5 */	bl setActionMode__8daE_FB_cFii
lbl_806B70DC:
/* 806B70DC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 806B70E0  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 806B70E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806B70E8  83 C1 00 08 */	lwz r30, 8(r1)
/* 806B70EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806B70F0  7C 08 03 A6 */	mtlr r0
/* 806B70F4  38 21 00 10 */	addi r1, r1, 0x10
/* 806B70F8  4E 80 00 20 */	blr 
