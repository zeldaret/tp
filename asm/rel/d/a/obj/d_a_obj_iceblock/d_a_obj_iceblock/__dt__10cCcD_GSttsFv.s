lbl_80C2427C:
/* 80C2427C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C24280  7C 08 02 A6 */	mflr r0
/* 80C24284  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C24288  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C2428C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C24290  41 82 00 1C */	beq lbl_80C242AC
/* 80C24294  3C A0 80 C2 */	lis r5, __vt__10cCcD_GStts@ha
/* 80C24298  38 05 45 E0 */	addi r0, r5, __vt__10cCcD_GStts@l
/* 80C2429C  90 1F 00 00 */	stw r0, 0(r31)
/* 80C242A0  7C 80 07 35 */	extsh. r0, r4
/* 80C242A4  40 81 00 08 */	ble lbl_80C242AC
/* 80C242A8  4B 6A AA 94 */	b __dl__FPv
lbl_80C242AC:
/* 80C242AC  7F E3 FB 78 */	mr r3, r31
/* 80C242B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C242B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C242B8  7C 08 03 A6 */	mtlr r0
/* 80C242BC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C242C0  4E 80 00 20 */	blr 
