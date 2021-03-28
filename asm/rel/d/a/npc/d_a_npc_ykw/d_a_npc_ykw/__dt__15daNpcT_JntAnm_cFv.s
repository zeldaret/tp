lbl_80B671D8:
/* 80B671D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B671DC  7C 08 02 A6 */	mflr r0
/* 80B671E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B671E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B671E8  93 C1 00 08 */	stw r30, 8(r1)
/* 80B671EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B671F0  7C 9E 23 78 */	mr r30, r4
/* 80B671F4  41 82 00 C4 */	beq lbl_80B672B8
/* 80B671F8  3C 60 80 B7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80B671FC  38 03 8C 60 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80B67200  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80B67204  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80B67208  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha
/* 80B6720C  38 84 6B FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B67210  38 A0 00 0C */	li r5, 0xc
/* 80B67214  38 C0 00 03 */	li r6, 3
/* 80B67218  4B 7F AA D0 */	b __destroy_arr
/* 80B6721C  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80B67220  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha
/* 80B67224  38 84 6B FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B67228  38 A0 00 0C */	li r5, 0xc
/* 80B6722C  38 C0 00 03 */	li r6, 3
/* 80B67230  4B 7F AA B8 */	b __destroy_arr
/* 80B67234  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80B67238  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha
/* 80B6723C  38 84 6B FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B67240  38 A0 00 0C */	li r5, 0xc
/* 80B67244  38 C0 00 03 */	li r6, 3
/* 80B67248  4B 7F AA A0 */	b __destroy_arr
/* 80B6724C  38 7F 00 78 */	addi r3, r31, 0x78
/* 80B67250  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha
/* 80B67254  38 84 6B FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B67258  38 A0 00 0C */	li r5, 0xc
/* 80B6725C  38 C0 00 03 */	li r6, 3
/* 80B67260  4B 7F AA 88 */	b __destroy_arr
/* 80B67264  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B67268  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha
/* 80B6726C  38 84 6B FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B67270  38 A0 00 0C */	li r5, 0xc
/* 80B67274  38 C0 00 03 */	li r6, 3
/* 80B67278  4B 7F AA 70 */	b __destroy_arr
/* 80B6727C  38 7F 00 30 */	addi r3, r31, 0x30
/* 80B67280  3C 80 80 B6 */	lis r4, __dt__4cXyzFv@ha
/* 80B67284  38 84 6B FC */	addi r4, r4, __dt__4cXyzFv@l
/* 80B67288  38 A0 00 0C */	li r5, 0xc
/* 80B6728C  38 C0 00 03 */	li r6, 3
/* 80B67290  4B 7F AA 58 */	b __destroy_arr
/* 80B67294  28 1F 00 00 */	cmplwi r31, 0
/* 80B67298  41 82 00 10 */	beq lbl_80B672A8
/* 80B6729C  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80B672A0  38 03 8C 54 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80B672A4  90 1F 00 04 */	stw r0, 4(r31)
lbl_80B672A8:
/* 80B672A8  7F C0 07 35 */	extsh. r0, r30
/* 80B672AC  40 81 00 0C */	ble lbl_80B672B8
/* 80B672B0  7F E3 FB 78 */	mr r3, r31
/* 80B672B4  4B 76 7A 88 */	b __dl__FPv
lbl_80B672B8:
/* 80B672B8  7F E3 FB 78 */	mr r3, r31
/* 80B672BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B672C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B672C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B672C8  7C 08 03 A6 */	mtlr r0
/* 80B672CC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B672D0  4E 80 00 20 */	blr 
