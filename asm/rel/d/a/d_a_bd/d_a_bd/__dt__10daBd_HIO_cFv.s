lbl_804D9CB8:
/* 804D9CB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D9CBC  7C 08 02 A6 */	mflr r0
/* 804D9CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D9CC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D9CC8  7C 7F 1B 79 */	or. r31, r3, r3
/* 804D9CCC  41 82 00 1C */	beq lbl_804D9CE8
/* 804D9CD0  3C A0 80 4E */	lis r5, __vt__10daBd_HIO_c@ha /* 0x804DA30C@ha */
/* 804D9CD4  38 05 A3 0C */	addi r0, r5, __vt__10daBd_HIO_c@l /* 0x804DA30C@l */
/* 804D9CD8  90 1F 00 00 */	stw r0, 0(r31)
/* 804D9CDC  7C 80 07 35 */	extsh. r0, r4
/* 804D9CE0  40 81 00 08 */	ble lbl_804D9CE8
/* 804D9CE4  4B DF 50 59 */	bl __dl__FPv
lbl_804D9CE8:
/* 804D9CE8  7F E3 FB 78 */	mr r3, r31
/* 804D9CEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D9CF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D9CF4  7C 08 03 A6 */	mtlr r0
/* 804D9CF8  38 21 00 10 */	addi r1, r1, 0x10
/* 804D9CFC  4E 80 00 20 */	blr 
