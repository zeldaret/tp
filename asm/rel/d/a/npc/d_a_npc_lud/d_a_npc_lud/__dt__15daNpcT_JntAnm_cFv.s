lbl_80A6F418:
/* 80A6F418  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A6F41C  7C 08 02 A6 */	mflr r0
/* 80A6F420  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6F424  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A6F428  93 C1 00 08 */	stw r30, 8(r1)
/* 80A6F42C  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A6F430  7C 9E 23 78 */	mr r30, r4
/* 80A6F434  41 82 00 C4 */	beq lbl_80A6F4F8
/* 80A6F438  3C 60 80 A7 */	lis r3, __vt__15daNpcT_JntAnm_c@ha /* 0x80A70A58@ha */
/* 80A6F43C  38 03 0A 58 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l /* 0x80A70A58@l */
/* 80A6F440  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80A6F444  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80A6F448  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha /* 0x80A6EE84@ha */
/* 80A6F44C  38 84 EE 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A6EE84@l */
/* 80A6F450  38 A0 00 0C */	li r5, 0xc
/* 80A6F454  38 C0 00 03 */	li r6, 3
/* 80A6F458  4B 8F 28 91 */	bl __destroy_arr
/* 80A6F45C  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80A6F460  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha /* 0x80A6EE84@ha */
/* 80A6F464  38 84 EE 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A6EE84@l */
/* 80A6F468  38 A0 00 0C */	li r5, 0xc
/* 80A6F46C  38 C0 00 03 */	li r6, 3
/* 80A6F470  4B 8F 28 79 */	bl __destroy_arr
/* 80A6F474  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80A6F478  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha /* 0x80A6EE84@ha */
/* 80A6F47C  38 84 EE 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A6EE84@l */
/* 80A6F480  38 A0 00 0C */	li r5, 0xc
/* 80A6F484  38 C0 00 03 */	li r6, 3
/* 80A6F488  4B 8F 28 61 */	bl __destroy_arr
/* 80A6F48C  38 7F 00 78 */	addi r3, r31, 0x78
/* 80A6F490  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha /* 0x80A6EE84@ha */
/* 80A6F494  38 84 EE 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A6EE84@l */
/* 80A6F498  38 A0 00 0C */	li r5, 0xc
/* 80A6F49C  38 C0 00 03 */	li r6, 3
/* 80A6F4A0  4B 8F 28 49 */	bl __destroy_arr
/* 80A6F4A4  38 7F 00 54 */	addi r3, r31, 0x54
/* 80A6F4A8  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha /* 0x80A6EE84@ha */
/* 80A6F4AC  38 84 EE 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A6EE84@l */
/* 80A6F4B0  38 A0 00 0C */	li r5, 0xc
/* 80A6F4B4  38 C0 00 03 */	li r6, 3
/* 80A6F4B8  4B 8F 28 31 */	bl __destroy_arr
/* 80A6F4BC  38 7F 00 30 */	addi r3, r31, 0x30
/* 80A6F4C0  3C 80 80 A7 */	lis r4, __dt__4cXyzFv@ha /* 0x80A6EE84@ha */
/* 80A6F4C4  38 84 EE 84 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80A6EE84@l */
/* 80A6F4C8  38 A0 00 0C */	li r5, 0xc
/* 80A6F4CC  38 C0 00 03 */	li r6, 3
/* 80A6F4D0  4B 8F 28 19 */	bl __destroy_arr
/* 80A6F4D4  28 1F 00 00 */	cmplwi r31, 0
/* 80A6F4D8  41 82 00 10 */	beq lbl_80A6F4E8
/* 80A6F4DC  3C 60 80 A7 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha /* 0x80A70A4C@ha */
/* 80A6F4E0  38 03 0A 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l /* 0x80A70A4C@l */
/* 80A6F4E4  90 1F 00 04 */	stw r0, 4(r31)
lbl_80A6F4E8:
/* 80A6F4E8  7F C0 07 35 */	extsh. r0, r30
/* 80A6F4EC  40 81 00 0C */	ble lbl_80A6F4F8
/* 80A6F4F0  7F E3 FB 78 */	mr r3, r31
/* 80A6F4F4  4B 85 F8 49 */	bl __dl__FPv
lbl_80A6F4F8:
/* 80A6F4F8  7F E3 FB 78 */	mr r3, r31
/* 80A6F4FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6F500  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A6F504  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A6F508  7C 08 03 A6 */	mtlr r0
/* 80A6F50C  38 21 00 10 */	addi r1, r1, 0x10
/* 80A6F510  4E 80 00 20 */	blr 
