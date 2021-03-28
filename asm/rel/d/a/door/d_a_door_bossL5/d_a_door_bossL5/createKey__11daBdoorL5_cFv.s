lbl_80671B14:
/* 80671B14  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80671B18  7C 08 02 A6 */	mflr r0
/* 80671B1C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80671B20  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80671B24  7C 7F 1B 78 */	mr r31, r3
/* 80671B28  88 03 05 90 */	lbz r0, 0x590(r3)
/* 80671B2C  28 00 00 00 */	cmplwi r0, 0
/* 80671B30  40 82 00 CC */	bne lbl_80671BFC
/* 80671B34  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80671B38  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80671B3C  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80671B40  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80671B44  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80671B48  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80671B4C  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 80671B50  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80671B54  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 80671B58  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80671B5C  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 80671B60  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80671B64  3C 60 80 67 */	lis r3, lit_4015@ha
/* 80671B68  C0 03 25 1C */	lfs f0, lit_4015@l(r3)
/* 80671B6C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80671B70  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80671B74  3C 60 80 67 */	lis r3, lit_4110@ha
/* 80671B78  C0 03 25 2C */	lfs f0, lit_4110@l(r3)
/* 80671B7C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80671B80  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80671B84  7C 07 07 74 */	extsb r7, r0
/* 80671B88  38 00 00 00 */	li r0, 0
/* 80671B8C  90 01 00 08 */	stw r0, 8(r1)
/* 80671B90  38 60 01 14 */	li r3, 0x114
/* 80671B94  28 1F 00 00 */	cmplwi r31, 0
/* 80671B98  41 82 00 0C */	beq lbl_80671BA4
/* 80671B9C  80 9F 00 04 */	lwz r4, 4(r31)
/* 80671BA0  48 00 00 08 */	b lbl_80671BA8
lbl_80671BA4:
/* 80671BA4  38 80 FF FF */	li r4, -1
lbl_80671BA8:
/* 80671BA8  38 A0 FF 05 */	li r5, -251
/* 80671BAC  38 C1 00 10 */	addi r6, r1, 0x10
/* 80671BB0  39 1F 04 E4 */	addi r8, r31, 0x4e4
/* 80671BB4  39 3F 04 EC */	addi r9, r31, 0x4ec
/* 80671BB8  39 40 FF FF */	li r10, -1
/* 80671BBC  4B 9A 83 BC */	b fopAcM_createChildFromOffset__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 80671BC0  90 7F 05 8C */	stw r3, 0x58c(r31)
/* 80671BC4  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80671BC8  D0 1F 04 D0 */	stfs f0, 0x4d0(r31)
/* 80671BCC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80671BD0  D0 1F 04 D4 */	stfs f0, 0x4d4(r31)
/* 80671BD4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80671BD8  D0 1F 04 D8 */	stfs f0, 0x4d8(r31)
/* 80671BDC  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80671BE0  3C 03 00 01 */	addis r0, r3, 1
/* 80671BE4  28 00 FF FF */	cmplwi r0, 0xffff
/* 80671BE8  40 82 00 0C */	bne lbl_80671BF4
/* 80671BEC  38 60 00 00 */	li r3, 0
/* 80671BF0  48 00 00 10 */	b lbl_80671C00
lbl_80671BF4:
/* 80671BF4  38 00 00 01 */	li r0, 1
/* 80671BF8  98 1F 05 90 */	stb r0, 0x590(r31)
lbl_80671BFC:
/* 80671BFC  38 60 00 01 */	li r3, 1
lbl_80671C00:
/* 80671C00  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80671C04  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80671C08  7C 08 03 A6 */	mtlr r0
/* 80671C0C  38 21 00 30 */	addi r1, r1, 0x30
/* 80671C10  4E 80 00 20 */	blr 
