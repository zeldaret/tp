lbl_806C1250:
/* 806C1250  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806C1254  7C 08 02 A6 */	mflr r0
/* 806C1258  90 01 00 14 */	stw r0, 0x14(r1)
/* 806C125C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806C1260  7C 7F 1B 79 */	or. r31, r3, r3
/* 806C1264  41 82 00 1C */	beq lbl_806C1280
/* 806C1268  3C A0 80 6C */	lis r5, __vt__8cM3dGAab@ha /* 0x806C1B5C@ha */
/* 806C126C  38 05 1B 5C */	addi r0, r5, __vt__8cM3dGAab@l /* 0x806C1B5C@l */
/* 806C1270  90 1F 00 18 */	stw r0, 0x18(r31)
/* 806C1274  7C 80 07 35 */	extsh. r0, r4
/* 806C1278  40 81 00 08 */	ble lbl_806C1280
/* 806C127C  4B C0 DA C1 */	bl __dl__FPv
lbl_806C1280:
/* 806C1280  7F E3 FB 78 */	mr r3, r31
/* 806C1284  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806C1288  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806C128C  7C 08 03 A6 */	mtlr r0
/* 806C1290  38 21 00 10 */	addi r1, r1, 0x10
/* 806C1294  4E 80 00 20 */	blr 
