lbl_80A960D4:
/* 80A960D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A960D8  7C 08 02 A6 */	mflr r0
/* 80A960DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A960E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A960E4  93 C1 00 08 */	stw r30, 8(r1)
/* 80A960E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A960EC  7C 9E 23 78 */	mr r30, r4
/* 80A960F0  41 82 00 C4 */	beq lbl_80A961B4
/* 80A960F4  3C 60 80 A9 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A979C8@ha */
/* 80A960F8  38 03 79 C8 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A979C8@l */
/* 80A960FC  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80A96100  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80A96104  3C 80 80 A9 */	lis r4, __dt__4cXyzFv@ha /* 0x80A95B40@ha */
/* 80A96108  38 84 5B 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A95B40@l */
/* 80A9610C  38 A0 00 0C */	li r5, 0xc
/* 80A96110  38 C0 00 03 */	li r6, 3
/* 80A96114  4B 8C BB D5 */	bl __destroy_arr
/* 80A96118  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A9611C  3C 80 80 A9 */	lis r4, __dt__4cXyzFv@ha /* 0x80A95B40@ha */
/* 80A96120  38 84 5B 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A95B40@l */
/* 80A96124  38 A0 00 0C */	li r5, 0xc
/* 80A96128  38 C0 00 03 */	li r6, 3
/* 80A9612C  4B 8C BB BD */	bl __destroy_arr
/* 80A96130  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80A96134  3C 80 80 A9 */	lis r4, __dt__4cXyzFv@ha /* 0x80A95B40@ha */
/* 80A96138  38 84 5B 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A95B40@l */
/* 80A9613C  38 A0 00 0C */	li r5, 0xc
/* 80A96140  38 C0 00 03 */	li r6, 3
/* 80A96144  4B 8C BB A5 */	bl __destroy_arr
/* 80A96148  38 7F 00 78 */	addi r3, r31, 0x78
/* 80A9614C  3C 80 80 A9 */	lis r4, __dt__4cXyzFv@ha /* 0x80A95B40@ha */
/* 80A96150  38 84 5B 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A95B40@l */
/* 80A96154  38 A0 00 0C */	li r5, 0xc
/* 80A96158  38 C0 00 03 */	li r6, 3
/* 80A9615C  4B 8C BB 8D */	bl __destroy_arr
/* 80A96160  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A96164  3C 80 80 A9 */	lis r4, __dt__4cXyzFv@ha /* 0x80A95B40@ha */
/* 80A96168  38 84 5B 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A95B40@l */
/* 80A9616C  38 A0 00 0C */	li r5, 0xc
/* 80A96170  38 C0 00 03 */	li r6, 3
/* 80A96174  4B 8C BB 75 */	bl __destroy_arr
/* 80A96178  38 7F 00 30 */	addi r3, r31, 0x30
/* 80A9617C  3C 80 80 A9 */	lis r4, __dt__4cXyzFv@ha /* 0x80A95B40@ha */
/* 80A96180  38 84 5B 40 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A95B40@l */
/* 80A96184  38 A0 00 0C */	li r5, 0xc
/* 80A96188  38 C0 00 03 */	li r6, 3
/* 80A9618C  4B 8C BB 5D */	bl __destroy_arr
/* 80A96190  28 1F 00 00 */	cmplwi r31, 0
/* 80A96194  41 82 00 10 */	beq lbl_80A961A4
/* 80A96198  3C 60 80 A9 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A979BC@ha */
/* 80A9619C  38 03 79 BC */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A979BC@l */
/* 80A961A0  90 1F 00 04 */	stw r0, 4(r31)
lbl_80A961A4:
/* 80A961A4  7F C0 07 35 */	extsh. r0, r30
/* 80A961A8  40 81 00 0C */	ble lbl_80A961B4
/* 80A961AC  7F E3 FB 78 */	mr r3, r31
/* 80A961B0  4B 83 8B 8D */	bl __dl__FPv
lbl_80A961B4:
/* 80A961B4  7F E3 FB 78 */	mr r3, r31
/* 80A961B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A961BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A961C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A961C4  7C 08 03 A6 */	mtlr r0
/* 80A961C8  38 21 00 10 */	addi r1, r1, 0x10
/* 80A961CC  4E 80 00 20 */	blr 
