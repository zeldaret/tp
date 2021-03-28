lbl_800D1088:
/* 800D1088  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800D108C  7C 08 02 A6 */	mflr r0
/* 800D1090  90 01 00 14 */	stw r0, 0x14(r1)
/* 800D1094  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800D1098  7C 7F 1B 78 */	mr r31, r3
/* 800D109C  38 80 00 00 */	li r4, 0
/* 800D10A0  38 A0 00 00 */	li r5, 0
/* 800D10A4  4B FF 02 39 */	bl deleteEquipItem__9daAlink_cFii
/* 800D10A8  7F E3 FB 78 */	mr r3, r31
/* 800D10AC  48 00 01 BD */	bl setSwordModel__9daAlink_cFv
/* 800D10B0  38 00 00 03 */	li r0, 3
/* 800D10B4  98 1F 05 69 */	stb r0, 0x569(r31)
/* 800D10B8  7F E3 FB 78 */	mr r3, r31
/* 800D10BC  48 00 13 05 */	bl checkCutAction__9daAlink_cFv
/* 800D10C0  80 1F 05 70 */	lwz r0, 0x570(r31)
/* 800D10C4  64 00 00 08 */	oris r0, r0, 8
/* 800D10C8  90 1F 05 70 */	stw r0, 0x570(r31)
/* 800D10CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800D10D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800D10D4  7C 08 03 A6 */	mtlr r0
/* 800D10D8  38 21 00 10 */	addi r1, r1, 0x10
/* 800D10DC  4E 80 00 20 */	blr 
