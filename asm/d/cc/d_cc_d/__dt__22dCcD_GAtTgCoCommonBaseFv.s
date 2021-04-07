lbl_80083CA0:
/* 80083CA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80083CA4  7C 08 02 A6 */	mflr r0
/* 80083CA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80083CAC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80083CB0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80083CB4  41 82 00 1C */	beq lbl_80083CD0
/* 80083CB8  3C A0 80 3B */	lis r5, __vt__22dCcD_GAtTgCoCommonBase@ha /* 0x803AC250@ha */
/* 80083CBC  38 05 C2 50 */	addi r0, r5, __vt__22dCcD_GAtTgCoCommonBase@l /* 0x803AC250@l */
/* 80083CC0  90 1F 00 18 */	stw r0, 0x18(r31)
/* 80083CC4  7C 80 07 35 */	extsh. r0, r4
/* 80083CC8  40 81 00 08 */	ble lbl_80083CD0
/* 80083CCC  48 24 B0 71 */	bl __dl__FPv
lbl_80083CD0:
/* 80083CD0  7F E3 FB 78 */	mr r3, r31
/* 80083CD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80083CD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80083CDC  7C 08 03 A6 */	mtlr r0
/* 80083CE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80083CE4  4E 80 00 20 */	blr 
