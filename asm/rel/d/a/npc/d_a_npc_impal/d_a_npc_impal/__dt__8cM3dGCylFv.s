lbl_80A07B70:
/* 80A07B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A07B74  7C 08 02 A6 */	mflr r0
/* 80A07B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A07B7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A07B80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A07B84  41 82 00 1C */	beq lbl_80A07BA0
/* 80A07B88  3C A0 80 A1 */	lis r5, __vt__8cM3dGCyl@ha
/* 80A07B8C  38 05 C8 BC */	addi r0, r5, __vt__8cM3dGCyl@l
/* 80A07B90  90 1F 00 14 */	stw r0, 0x14(r31)
/* 80A07B94  7C 80 07 35 */	extsh. r0, r4
/* 80A07B98  40 81 00 08 */	ble lbl_80A07BA0
/* 80A07B9C  4B 8C 71 A0 */	b __dl__FPv
lbl_80A07BA0:
/* 80A07BA0  7F E3 FB 78 */	mr r3, r31
/* 80A07BA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A07BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A07BAC  7C 08 03 A6 */	mtlr r0
/* 80A07BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A07BB4  4E 80 00 20 */	blr 
