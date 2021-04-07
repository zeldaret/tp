lbl_80AB11FC:
/* 80AB11FC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB1200  7C 08 02 A6 */	mflr r0
/* 80AB1204  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB1208  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB120C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB1210  41 82 00 1C */	beq lbl_80AB122C
/* 80AB1214  3C A0 80 AB */	lis r5, __vt__13daNpcT_Path_c@ha /* 0x80AB2C08@ha */
/* 80AB1218  38 05 2C 08 */	addi r0, r5, __vt__13daNpcT_Path_c@l /* 0x80AB2C08@l */
/* 80AB121C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80AB1220  7C 80 07 35 */	extsh. r0, r4
/* 80AB1224  40 81 00 08 */	ble lbl_80AB122C
/* 80AB1228  4B 81 DB 15 */	bl __dl__FPv
lbl_80AB122C:
/* 80AB122C  7F E3 FB 78 */	mr r3, r31
/* 80AB1230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB1234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB1238  7C 08 03 A6 */	mtlr r0
/* 80AB123C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB1240  4E 80 00 20 */	blr 
