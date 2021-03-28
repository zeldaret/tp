lbl_809D95E0:
/* 809D95E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D95E4  7C 08 02 A6 */	mflr r0
/* 809D95E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D95EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D95F0  93 C1 00 08 */	stw r30, 8(r1)
/* 809D95F4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D95F8  7C 9E 23 78 */	mr r30, r4
/* 809D95FC  41 82 00 C4 */	beq lbl_809D96C0
/* 809D9600  3C 60 80 9E */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 809D9604  38 03 A3 54 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 809D9608  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 809D960C  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 809D9610  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha
/* 809D9614  38 84 8F 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 809D9618  38 A0 00 0C */	li r5, 0xc
/* 809D961C  38 C0 00 03 */	li r6, 3
/* 809D9620  4B 98 86 C8 */	b __destroy_arr
/* 809D9624  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 809D9628  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha
/* 809D962C  38 84 8F 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 809D9630  38 A0 00 0C */	li r5, 0xc
/* 809D9634  38 C0 00 03 */	li r6, 3
/* 809D9638  4B 98 86 B0 */	b __destroy_arr
/* 809D963C  38 7F 00 9C */	addi r3, r31, 0x9c
/* 809D9640  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha
/* 809D9644  38 84 8F 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 809D9648  38 A0 00 0C */	li r5, 0xc
/* 809D964C  38 C0 00 03 */	li r6, 3
/* 809D9650  4B 98 86 98 */	b __destroy_arr
/* 809D9654  38 7F 00 78 */	addi r3, r31, 0x78
/* 809D9658  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha
/* 809D965C  38 84 8F 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 809D9660  38 A0 00 0C */	li r5, 0xc
/* 809D9664  38 C0 00 03 */	li r6, 3
/* 809D9668  4B 98 86 80 */	b __destroy_arr
/* 809D966C  38 7F 00 54 */	addi r3, r31, 0x54
/* 809D9670  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha
/* 809D9674  38 84 8F 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 809D9678  38 A0 00 0C */	li r5, 0xc
/* 809D967C  38 C0 00 03 */	li r6, 3
/* 809D9680  4B 98 86 68 */	b __destroy_arr
/* 809D9684  38 7F 00 30 */	addi r3, r31, 0x30
/* 809D9688  3C 80 80 9E */	lis r4, __dt__4cXyzFv@ha
/* 809D968C  38 84 8F 98 */	addi r4, r4, __dt__4cXyzFv@l
/* 809D9690  38 A0 00 0C */	li r5, 0xc
/* 809D9694  38 C0 00 03 */	li r6, 3
/* 809D9698  4B 98 86 50 */	b __destroy_arr
/* 809D969C  28 1F 00 00 */	cmplwi r31, 0
/* 809D96A0  41 82 00 10 */	beq lbl_809D96B0
/* 809D96A4  3C 60 80 9E */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809D96A8  38 03 A3 48 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809D96AC  90 1F 00 04 */	stw r0, 4(r31)
lbl_809D96B0:
/* 809D96B0  7F C0 07 35 */	extsh. r0, r30
/* 809D96B4  40 81 00 0C */	ble lbl_809D96C0
/* 809D96B8  7F E3 FB 78 */	mr r3, r31
/* 809D96BC  4B 8F 56 80 */	b __dl__FPv
lbl_809D96C0:
/* 809D96C0  7F E3 FB 78 */	mr r3, r31
/* 809D96C4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D96C8  83 C1 00 08 */	lwz r30, 8(r1)
/* 809D96CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D96D0  7C 08 03 A6 */	mtlr r0
/* 809D96D4  38 21 00 10 */	addi r1, r1, 0x10
/* 809D96D8  4E 80 00 20 */	blr 
