lbl_80A68504:
/* 80A68504  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A68508  7C 08 02 A6 */	mflr r0
/* 80A6850C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A68510  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A68514  93 C1 00 08 */	stw r30, 8(r1)
/* 80A68518  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6851C  7C 9E 23 78 */	mr r30, r4
/* 80A68520  41 82 00 C4 */	beq lbl_80A685E4
/* 80A68524  3C 60 80 A7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A6994C@ha */
/* 80A68528  38 03 99 4C */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A6994C@l */
/* 80A6852C  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80A68530  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80A68534  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha /* 0x80A67F28@ha */
/* 80A68538  38 84 7F 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A67F28@l */
/* 80A6853C  38 A0 00 0C */	li r5, 0xc
/* 80A68540  38 C0 00 03 */	li r6, 3
/* 80A68544  4B 8F 97 A5 */	bl __destroy_arr
/* 80A68548  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A6854C  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha /* 0x80A67F28@ha */
/* 80A68550  38 84 7F 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A67F28@l */
/* 80A68554  38 A0 00 0C */	li r5, 0xc
/* 80A68558  38 C0 00 03 */	li r6, 3
/* 80A6855C  4B 8F 97 8D */	bl __destroy_arr
/* 80A68560  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80A68564  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha /* 0x80A67F28@ha */
/* 80A68568  38 84 7F 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A67F28@l */
/* 80A6856C  38 A0 00 0C */	li r5, 0xc
/* 80A68570  38 C0 00 03 */	li r6, 3
/* 80A68574  4B 8F 97 75 */	bl __destroy_arr
/* 80A68578  38 7F 00 78 */	addi r3, r31, 0x78
/* 80A6857C  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha /* 0x80A67F28@ha */
/* 80A68580  38 84 7F 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A67F28@l */
/* 80A68584  38 A0 00 0C */	li r5, 0xc
/* 80A68588  38 C0 00 03 */	li r6, 3
/* 80A6858C  4B 8F 97 5D */	bl __destroy_arr
/* 80A68590  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A68594  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha /* 0x80A67F28@ha */
/* 80A68598  38 84 7F 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A67F28@l */
/* 80A6859C  38 A0 00 0C */	li r5, 0xc
/* 80A685A0  38 C0 00 03 */	li r6, 3
/* 80A685A4  4B 8F 97 45 */	bl __destroy_arr
/* 80A685A8  38 7F 00 30 */	addi r3, r31, 0x30
/* 80A685AC  3C 80 80 A6 */	lis r4, __dt__4cXyzFv@ha /* 0x80A67F28@ha */
/* 80A685B0  38 84 7F 28 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A67F28@l */
/* 80A685B4  38 A0 00 0C */	li r5, 0xc
/* 80A685B8  38 C0 00 03 */	li r6, 3
/* 80A685BC  4B 8F 97 2D */	bl __destroy_arr
/* 80A685C0  28 1F 00 00 */	cmplwi r31, 0
/* 80A685C4  41 82 00 10 */	beq lbl_80A685D4
/* 80A685C8  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A69940@ha */
/* 80A685CC  38 03 99 40 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A69940@l */
/* 80A685D0  90 1F 00 04 */	stw r0, 4(r31)
lbl_80A685D4:
/* 80A685D4  7F C0 07 35 */	extsh. r0, r30
/* 80A685D8  40 81 00 0C */	ble lbl_80A685E4
/* 80A685DC  7F E3 FB 78 */	mr r3, r31
/* 80A685E0  4B 86 67 5D */	bl __dl__FPv
lbl_80A685E4:
/* 80A685E4  7F E3 FB 78 */	mr r3, r31
/* 80A685E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A685EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A685F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A685F4  7C 08 03 A6 */	mtlr r0
/* 80A685F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A685FC  4E 80 00 20 */	blr 
