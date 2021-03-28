lbl_809D3110:
/* 809D3110  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D3114  7C 08 02 A6 */	mflr r0
/* 809D3118  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D311C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D3120  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D3124  41 82 00 1C */	beq lbl_809D3140
/* 809D3128  3C A0 80 9D */	lis r5, __vt__18daNpcF_ActorMngr_c@ha
/* 809D312C  38 05 3E 6C */	addi r0, r5, __vt__18daNpcF_ActorMngr_c@l
/* 809D3130  90 1F 00 04 */	stw r0, 4(r31)
/* 809D3134  7C 80 07 35 */	extsh. r0, r4
/* 809D3138  40 81 00 08 */	ble lbl_809D3140
/* 809D313C  4B 8F BC 00 */	b __dl__FPv
lbl_809D3140:
/* 809D3140  7F E3 FB 78 */	mr r3, r31
/* 809D3144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D3148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D314C  7C 08 03 A6 */	mtlr r0
/* 809D3150  38 21 00 10 */	addi r1, r1, 0x10
/* 809D3154  4E 80 00 20 */	blr 
