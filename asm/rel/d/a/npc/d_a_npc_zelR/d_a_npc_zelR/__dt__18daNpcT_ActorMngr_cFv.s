lbl_80B712F4:
/* 80B712F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B712F8  7C 08 02 A6 */	mflr r0
/* 80B712FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B71300  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B71304  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B71308  41 82 00 1C */	beq lbl_80B71324
/* 80B7130C  3C A0 80 B7 */	lis r5, __vt__18daNpcT_ActorMngr_c@ha /* 0x80B71D98@ha */
/* 80B71310  38 05 1D 98 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l /* 0x80B71D98@l */
/* 80B71314  90 1F 00 04 */	stw r0, 4(r31)
/* 80B71318  7C 80 07 35 */	extsh. r0, r4
/* 80B7131C  40 81 00 08 */	ble lbl_80B71324
/* 80B71320  4B 75 DA 1D */	bl __dl__FPv
lbl_80B71324:
/* 80B71324  7F E3 FB 78 */	mr r3, r31
/* 80B71328  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B7132C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B71330  7C 08 03 A6 */	mtlr r0
/* 80B71334  38 21 00 10 */	addi r1, r1, 0x10
/* 80B71338  4E 80 00 20 */	blr 
