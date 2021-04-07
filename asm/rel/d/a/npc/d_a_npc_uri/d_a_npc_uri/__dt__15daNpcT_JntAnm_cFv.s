lbl_80B2C46C:
/* 80B2C46C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B2C470  7C 08 02 A6 */	mflr r0
/* 80B2C474  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B2C478  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B2C47C  93 C1 00 08 */	stw r30, 8(r1)
/* 80B2C480  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B2C484  7C 9E 23 78 */	mr r30, r4
/* 80B2C488  41 82 00 C4 */	beq lbl_80B2C54C
/* 80B2C48C  3C 60 80 B3 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B2DC0C@ha */
/* 80B2C490  38 03 DC 0C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B2DC0C@l */
/* 80B2C494  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80B2C498  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80B2C49C  3C 80 80 B3 */	lis r4, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2C4A0  38 84 BE 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2C4A4  38 A0 00 0C */	li r5, 0xc
/* 80B2C4A8  38 C0 00 03 */	li r6, 3
/* 80B2C4AC  4B 83 58 3D */	bl __destroy_arr
/* 80B2C4B0  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80B2C4B4  3C 80 80 B3 */	lis r4, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2C4B8  38 84 BE 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2C4BC  38 A0 00 0C */	li r5, 0xc
/* 80B2C4C0  38 C0 00 03 */	li r6, 3
/* 80B2C4C4  4B 83 58 25 */	bl __destroy_arr
/* 80B2C4C8  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80B2C4CC  3C 80 80 B3 */	lis r4, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2C4D0  38 84 BE 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2C4D4  38 A0 00 0C */	li r5, 0xc
/* 80B2C4D8  38 C0 00 03 */	li r6, 3
/* 80B2C4DC  4B 83 58 0D */	bl __destroy_arr
/* 80B2C4E0  38 7F 00 78 */	addi r3, r31, 0x78
/* 80B2C4E4  3C 80 80 B3 */	lis r4, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2C4E8  38 84 BE 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2C4EC  38 A0 00 0C */	li r5, 0xc
/* 80B2C4F0  38 C0 00 03 */	li r6, 3
/* 80B2C4F4  4B 83 57 F5 */	bl __destroy_arr
/* 80B2C4F8  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B2C4FC  3C 80 80 B3 */	lis r4, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2C500  38 84 BE 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2C504  38 A0 00 0C */	li r5, 0xc
/* 80B2C508  38 C0 00 03 */	li r6, 3
/* 80B2C50C  4B 83 57 DD */	bl __destroy_arr
/* 80B2C510  38 7F 00 30 */	addi r3, r31, 0x30
/* 80B2C514  3C 80 80 B3 */	lis r4, __dt__4cXyzFv@ha /* 0x80B2BE90@ha */
/* 80B2C518  38 84 BE 90 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B2BE90@l */
/* 80B2C51C  38 A0 00 0C */	li r5, 0xc
/* 80B2C520  38 C0 00 03 */	li r6, 3
/* 80B2C524  4B 83 57 C5 */	bl __destroy_arr
/* 80B2C528  28 1F 00 00 */	cmplwi r31, 0
/* 80B2C52C  41 82 00 10 */	beq lbl_80B2C53C
/* 80B2C530  3C 60 80 B3 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B2DC00@ha */
/* 80B2C534  38 03 DC 00 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B2DC00@l */
/* 80B2C538  90 1F 00 04 */	stw r0, 4(r31)
lbl_80B2C53C:
/* 80B2C53C  7F C0 07 35 */	extsh. r0, r30
/* 80B2C540  40 81 00 0C */	ble lbl_80B2C54C
/* 80B2C544  7F E3 FB 78 */	mr r3, r31
/* 80B2C548  4B 7A 27 F5 */	bl __dl__FPv
lbl_80B2C54C:
/* 80B2C54C  7F E3 FB 78 */	mr r3, r31
/* 80B2C550  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B2C554  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B2C558  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B2C55C  7C 08 03 A6 */	mtlr r0
/* 80B2C560  38 21 00 10 */	addi r1, r1, 0x10
/* 80B2C564  4E 80 00 20 */	blr 
