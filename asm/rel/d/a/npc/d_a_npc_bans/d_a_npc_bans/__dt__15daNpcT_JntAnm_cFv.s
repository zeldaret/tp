lbl_8096731C:
/* 8096731C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80967320  7C 08 02 A6 */	mflr r0
/* 80967324  90 01 00 14 */	stw r0, 0x14(r1)
/* 80967328  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8096732C  93 C1 00 08 */	stw r30, 8(r1)
/* 80967330  7C 7F 1B 79 */	or. r31, r3, r3
/* 80967334  7C 9E 23 78 */	mr r30, r4
/* 80967338  41 82 00 C4 */	beq lbl_809673FC
/* 8096733C  3C 60 80 97 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80967340  38 03 87 40 */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80967344  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80967348  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 8096734C  3C 80 80 96 */	lis r4, __dt__4cXyzFv@ha
/* 80967350  38 84 6E 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80967354  38 A0 00 0C */	li r5, 0xc
/* 80967358  38 C0 00 03 */	li r6, 3
/* 8096735C  4B 9F A9 8C */	b __destroy_arr
/* 80967360  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80967364  3C 80 80 96 */	lis r4, __dt__4cXyzFv@ha
/* 80967368  38 84 6E 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 8096736C  38 A0 00 0C */	li r5, 0xc
/* 80967370  38 C0 00 03 */	li r6, 3
/* 80967374  4B 9F A9 74 */	b __destroy_arr
/* 80967378  38 7F 00 9C */	addi r3, r31, 0x9c
/* 8096737C  3C 80 80 96 */	lis r4, __dt__4cXyzFv@ha
/* 80967380  38 84 6E 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 80967384  38 A0 00 0C */	li r5, 0xc
/* 80967388  38 C0 00 03 */	li r6, 3
/* 8096738C  4B 9F A9 5C */	b __destroy_arr
/* 80967390  38 7F 00 78 */	addi r3, r31, 0x78
/* 80967394  3C 80 80 96 */	lis r4, __dt__4cXyzFv@ha
/* 80967398  38 84 6E 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 8096739C  38 A0 00 0C */	li r5, 0xc
/* 809673A0  38 C0 00 03 */	li r6, 3
/* 809673A4  4B 9F A9 44 */	b __destroy_arr
/* 809673A8  38 7F 00 54 */	addi r3, r31, 0x54
/* 809673AC  3C 80 80 96 */	lis r4, __dt__4cXyzFv@ha
/* 809673B0  38 84 6E 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 809673B4  38 A0 00 0C */	li r5, 0xc
/* 809673B8  38 C0 00 03 */	li r6, 3
/* 809673BC  4B 9F A9 2C */	b __destroy_arr
/* 809673C0  38 7F 00 30 */	addi r3, r31, 0x30
/* 809673C4  3C 80 80 96 */	lis r4, __dt__4cXyzFv@ha
/* 809673C8  38 84 6E 9C */	addi r4, r4, __dt__4cXyzFv@l
/* 809673CC  38 A0 00 0C */	li r5, 0xc
/* 809673D0  38 C0 00 03 */	li r6, 3
/* 809673D4  4B 9F A9 14 */	b __destroy_arr
/* 809673D8  28 1F 00 00 */	cmplwi r31, 0
/* 809673DC  41 82 00 10 */	beq lbl_809673EC
/* 809673E0  3C 60 80 97 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 809673E4  38 03 87 4C */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 809673E8  90 1F 00 04 */	stw r0, 4(r31)
lbl_809673EC:
/* 809673EC  7F C0 07 35 */	extsh. r0, r30
/* 809673F0  40 81 00 0C */	ble lbl_809673FC
/* 809673F4  7F E3 FB 78 */	mr r3, r31
/* 809673F8  4B 96 79 44 */	b __dl__FPv
lbl_809673FC:
/* 809673FC  7F E3 FB 78 */	mr r3, r31
/* 80967400  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80967404  83 C1 00 08 */	lwz r30, 8(r1)
/* 80967408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8096740C  7C 08 03 A6 */	mtlr r0
/* 80967410  38 21 00 10 */	addi r1, r1, 0x10
/* 80967414  4E 80 00 20 */	blr 
