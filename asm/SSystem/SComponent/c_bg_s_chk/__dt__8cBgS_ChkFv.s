lbl_80267B70:
/* 80267B70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80267B74  7C 08 02 A6 */	mflr r0
/* 80267B78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80267B7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80267B80  7C 7F 1B 79 */	or. r31, r3, r3
/* 80267B84  41 82 00 1C */	beq lbl_80267BA0
/* 80267B88  3C A0 80 3C */	lis r5, __vt__8cBgS_Chk@ha /* 0x803C3F80@ha */
/* 80267B8C  38 05 3F 80 */	addi r0, r5, __vt__8cBgS_Chk@l /* 0x803C3F80@l */
/* 80267B90  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80267B94  7C 80 07 35 */	extsh. r0, r4
/* 80267B98  40 81 00 08 */	ble lbl_80267BA0
/* 80267B9C  48 06 71 A1 */	bl __dl__FPv
lbl_80267BA0:
/* 80267BA0  7F E3 FB 78 */	mr r3, r31
/* 80267BA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80267BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80267BAC  7C 08 03 A6 */	mtlr r0
/* 80267BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80267BB4  4E 80 00 20 */	blr 
