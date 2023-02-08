lbl_80AAC868:
/* 80AAC868  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AAC86C  7C 08 02 A6 */	mflr r0
/* 80AAC870  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AAC874  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AAC878  93 C1 00 08 */	stw r30, 8(r1)
/* 80AAC87C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AAC880  7C 9E 23 78 */	mr r30, r4
/* 80AAC884  41 82 00 C4 */	beq lbl_80AAC948
/* 80AAC888  3C 60 80 AB */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80AADAE4@ha */
/* 80AAC88C  38 03 DA E4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80AADAE4@l */
/* 80AAC890  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80AAC894  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80AAC898  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AAC28C@ha */
/* 80AAC89C  38 84 C2 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AAC28C@l */
/* 80AAC8A0  38 A0 00 0C */	li r5, 0xc
/* 80AAC8A4  38 C0 00 03 */	li r6, 3
/* 80AAC8A8  4B 8B 54 41 */	bl __destroy_arr
/* 80AAC8AC  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80AAC8B0  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AAC28C@ha */
/* 80AAC8B4  38 84 C2 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AAC28C@l */
/* 80AAC8B8  38 A0 00 0C */	li r5, 0xc
/* 80AAC8BC  38 C0 00 03 */	li r6, 3
/* 80AAC8C0  4B 8B 54 29 */	bl __destroy_arr
/* 80AAC8C4  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80AAC8C8  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AAC28C@ha */
/* 80AAC8CC  38 84 C2 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AAC28C@l */
/* 80AAC8D0  38 A0 00 0C */	li r5, 0xc
/* 80AAC8D4  38 C0 00 03 */	li r6, 3
/* 80AAC8D8  4B 8B 54 11 */	bl __destroy_arr
/* 80AAC8DC  38 7F 00 78 */	addi r3, r31, 0x78
/* 80AAC8E0  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AAC28C@ha */
/* 80AAC8E4  38 84 C2 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AAC28C@l */
/* 80AAC8E8  38 A0 00 0C */	li r5, 0xc
/* 80AAC8EC  38 C0 00 03 */	li r6, 3
/* 80AAC8F0  4B 8B 53 F9 */	bl __destroy_arr
/* 80AAC8F4  38 7F 00 54 */	addi r3, r31, 0x54
/* 80AAC8F8  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AAC28C@ha */
/* 80AAC8FC  38 84 C2 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AAC28C@l */
/* 80AAC900  38 A0 00 0C */	li r5, 0xc
/* 80AAC904  38 C0 00 03 */	li r6, 3
/* 80AAC908  4B 8B 53 E1 */	bl __destroy_arr
/* 80AAC90C  38 7F 00 30 */	addi r3, r31, 0x30
/* 80AAC910  3C 80 80 AB */	lis r4, __dt__4cXyzFv@ha /* 0x80AAC28C@ha */
/* 80AAC914  38 84 C2 8C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80AAC28C@l */
/* 80AAC918  38 A0 00 0C */	li r5, 0xc
/* 80AAC91C  38 C0 00 03 */	li r6, 3
/* 80AAC920  4B 8B 53 C9 */	bl __destroy_arr
/* 80AAC924  28 1F 00 00 */	cmplwi r31, 0
/* 80AAC928  41 82 00 10 */	beq lbl_80AAC938
/* 80AAC92C  3C 60 80 AB */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80AADAD8@ha */
/* 80AAC930  38 03 DA D8 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80AADAD8@l */
/* 80AAC934  90 1F 00 04 */	stw r0, 4(r31)
lbl_80AAC938:
/* 80AAC938  7F C0 07 35 */	extsh. r0, r30
/* 80AAC93C  40 81 00 0C */	ble lbl_80AAC948
/* 80AAC940  7F E3 FB 78 */	mr r3, r31
/* 80AAC944  4B 82 23 F9 */	bl __dl__FPv
lbl_80AAC948:
/* 80AAC948  7F E3 FB 78 */	mr r3, r31
/* 80AAC94C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AAC950  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AAC954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AAC958  7C 08 03 A6 */	mtlr r0
/* 80AAC95C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AAC960  4E 80 00 20 */	blr 
