lbl_80B711F4:
/* 80B711F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B711F8  7C 08 02 A6 */	mflr r0
/* 80B711FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B71200  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B71204  93 C1 00 08 */	stw r30, 8(r1)
/* 80B71208  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B7120C  7C 9E 23 78 */	mr r30, r4
/* 80B71210  41 82 00 C4 */	beq lbl_80B712D4
/* 80B71214  3C 60 80 B7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80B71DA4@ha */
/* 80B71218  38 03 1D A4 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80B71DA4@l */
/* 80B7121C  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80B71220  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80B71224  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B71228  38 84 0C 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B7122C  38 A0 00 0C */	li r5, 0xc
/* 80B71230  38 C0 00 03 */	li r6, 3
/* 80B71234  4B 7F 0A B5 */	bl __destroy_arr
/* 80B71238  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80B7123C  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B71240  38 84 0C 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B71244  38 A0 00 0C */	li r5, 0xc
/* 80B71248  38 C0 00 03 */	li r6, 3
/* 80B7124C  4B 7F 0A 9D */	bl __destroy_arr
/* 80B71250  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80B71254  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B71258  38 84 0C 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B7125C  38 A0 00 0C */	li r5, 0xc
/* 80B71260  38 C0 00 03 */	li r6, 3
/* 80B71264  4B 7F 0A 85 */	bl __destroy_arr
/* 80B71268  38 7F 00 78 */	addi r3, r31, 0x78
/* 80B7126C  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B71270  38 84 0C 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B71274  38 A0 00 0C */	li r5, 0xc
/* 80B71278  38 C0 00 03 */	li r6, 3
/* 80B7127C  4B 7F 0A 6D */	bl __destroy_arr
/* 80B71280  38 7F 00 54 */	addi r3, r31, 0x54
/* 80B71284  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B71288  38 84 0C 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B7128C  38 A0 00 0C */	li r5, 0xc
/* 80B71290  38 C0 00 03 */	li r6, 3
/* 80B71294  4B 7F 0A 55 */	bl __destroy_arr
/* 80B71298  38 7F 00 30 */	addi r3, r31, 0x30
/* 80B7129C  3C 80 80 B7 */	lis r4, __dt__4cXyzFv@ha /* 0x80B70C9C@ha */
/* 80B712A0  38 84 0C 9C */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B70C9C@l */
/* 80B712A4  38 A0 00 0C */	li r5, 0xc
/* 80B712A8  38 C0 00 03 */	li r6, 3
/* 80B712AC  4B 7F 0A 3D */	bl __destroy_arr
/* 80B712B0  28 1F 00 00 */	cmplwi r31, 0
/* 80B712B4  41 82 00 10 */	beq lbl_80B712C4
/* 80B712B8  3C 60 80 B7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B71D98@ha */
/* 80B712BC  38 03 1D 98 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80B71D98@l */
/* 80B712C0  90 1F 00 04 */	stw r0, 4(r31)
lbl_80B712C4:
/* 80B712C4  7F C0 07 35 */	extsh. r0, r30
/* 80B712C8  40 81 00 0C */	ble lbl_80B712D4
/* 80B712CC  7F E3 FB 78 */	mr r3, r31
/* 80B712D0  4B 75 DA 6D */	bl __dl__FPv
lbl_80B712D4:
/* 80B712D4  7F E3 FB 78 */	mr r3, r31
/* 80B712D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B712DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80B712E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B712E4  7C 08 03 A6 */	mtlr r0
/* 80B712E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B712EC  4E 80 00 20 */	blr 
