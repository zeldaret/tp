lbl_80CB1180:
/* 80CB1180  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CB1184  7C 08 02 A6 */	mflr r0
/* 80CB1188  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CB118C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80CB1190  7C 7F 1B 79 */	or. r31, r3, r3
/* 80CB1194  41 82 00 1C */	beq lbl_80CB11B0
/* 80CB1198  3C A0 80 CB */	lis r5, __vt__8cM3dGSph@ha /* 0x80CB1944@ha */
/* 80CB119C  38 05 19 44 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80CB1944@l */
/* 80CB11A0  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80CB11A4  7C 80 07 35 */	extsh. r0, r4
/* 80CB11A8  40 81 00 08 */	ble lbl_80CB11B0
/* 80CB11AC  4B 61 DB 91 */	bl __dl__FPv
lbl_80CB11B0:
/* 80CB11B0  7F E3 FB 78 */	mr r3, r31
/* 80CB11B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80CB11B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CB11BC  7C 08 03 A6 */	mtlr r0
/* 80CB11C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CB11C4  4E 80 00 20 */	blr 
