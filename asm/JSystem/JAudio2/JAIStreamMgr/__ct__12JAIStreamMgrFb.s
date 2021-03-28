lbl_802A3B68:
/* 802A3B68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802A3B6C  7C 08 02 A6 */	mflr r0
/* 802A3B70  90 01 00 14 */	stw r0, 0x14(r1)
/* 802A3B74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802A3B78  7C 7F 1B 78 */	mr r31, r3
/* 802A3B7C  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802A3B80  41 82 00 08 */	beq lbl_802A3B88
/* 802A3B84  93 ED 85 E4 */	stw r31, data_80450B64(r13)
lbl_802A3B88:
/* 802A3B88  C0 02 BE 00 */	lfs f0, lit_653(r2)
/* 802A3B8C  D0 1F 00 04 */	stfs f0, 4(r31)
/* 802A3B90  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802A3B94  C0 22 BE 04 */	lfs f1, lit_654(r2)
/* 802A3B98  D0 3F 00 08 */	stfs f1, 8(r31)
/* 802A3B9C  C0 02 BE 08 */	lfs f0, lit_655(r2)
/* 802A3BA0  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 802A3BA4  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 802A3BA8  38 7F 00 58 */	addi r3, r31, 0x58
/* 802A3BAC  48 03 83 69 */	bl initiate__10JSUPtrListFv
/* 802A3BB0  38 00 00 00 */	li r0, 0
/* 802A3BB4  90 1F 00 64 */	stw r0, 0x64(r31)
/* 802A3BB8  90 1F 00 68 */	stw r0, 0x68(r31)
/* 802A3BBC  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 802A3BC0  90 1F 00 54 */	stw r0, 0x54(r31)
/* 802A3BC4  C0 02 BE 00 */	lfs f0, lit_653(r2)
/* 802A3BC8  D0 1F 00 04 */	stfs f0, 4(r31)
/* 802A3BCC  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 802A3BD0  C0 22 BE 04 */	lfs f1, lit_654(r2)
/* 802A3BD4  D0 3F 00 08 */	stfs f1, 8(r31)
/* 802A3BD8  C0 02 BE 08 */	lfs f0, lit_655(r2)
/* 802A3BDC  D0 1F 00 10 */	stfs f0, 0x10(r31)
/* 802A3BE0  D0 3F 00 14 */	stfs f1, 0x14(r31)
/* 802A3BE4  D0 3F 00 18 */	stfs f1, 0x18(r31)
/* 802A3BE8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 802A3BEC  D0 3F 00 1C */	stfs f1, 0x1c(r31)
/* 802A3BF0  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 802A3BF4  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 802A3BF8  D0 3F 00 28 */	stfs f1, 0x28(r31)
/* 802A3BFC  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 802A3C00  90 1F 00 38 */	stw r0, 0x38(r31)
/* 802A3C04  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 802A3C08  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 802A3C0C  90 1F 00 44 */	stw r0, 0x44(r31)
/* 802A3C10  D0 3F 00 40 */	stfs f1, 0x40(r31)
/* 802A3C14  D0 3F 00 48 */	stfs f1, 0x48(r31)
/* 802A3C18  90 1F 00 50 */	stw r0, 0x50(r31)
/* 802A3C1C  D0 3F 00 4C */	stfs f1, 0x4c(r31)
/* 802A3C20  98 1F 00 00 */	stb r0, 0(r31)
/* 802A3C24  7F E3 FB 78 */	mr r3, r31
/* 802A3C28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802A3C2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802A3C30  7C 08 03 A6 */	mtlr r0
/* 802A3C34  38 21 00 10 */	addi r1, r1, 0x10
/* 802A3C38  4E 80 00 20 */	blr 
