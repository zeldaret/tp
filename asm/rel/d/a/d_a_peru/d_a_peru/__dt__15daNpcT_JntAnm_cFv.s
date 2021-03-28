lbl_80D4B6BC:
/* 80D4B6BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D4B6C0  7C 08 02 A6 */	mflr r0
/* 80D4B6C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D4B6C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D4B6CC  93 C1 00 08 */	stw r30, 8(r1)
/* 80D4B6D0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D4B6D4  7C 9E 23 78 */	mr r30, r4
/* 80D4B6D8  41 82 00 C4 */	beq lbl_80D4B79C
/* 80D4B6DC  3C 60 80 D5 */	lis r3, __vt__15daNpcT_JntAnm_c@ha
/* 80D4B6E0  38 03 C6 FC */	addi r0, r3, __vt__15daNpcT_JntAnm_c@l
/* 80D4B6E4  90 1F 01 5C */	stw r0, 0x15c(r31)
/* 80D4B6E8  38 7F 00 E4 */	addi r3, r31, 0xe4
/* 80D4B6EC  3C 80 80 D5 */	lis r4, __dt__4cXyzFv@ha
/* 80D4B6F0  38 84 AF 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80D4B6F4  38 A0 00 0C */	li r5, 0xc
/* 80D4B6F8  38 C0 00 03 */	li r6, 3
/* 80D4B6FC  4B 61 65 EC */	b __destroy_arr
/* 80D4B700  38 7F 00 C0 */	addi r3, r31, 0xc0
/* 80D4B704  3C 80 80 D5 */	lis r4, __dt__4cXyzFv@ha
/* 80D4B708  38 84 AF 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80D4B70C  38 A0 00 0C */	li r5, 0xc
/* 80D4B710  38 C0 00 03 */	li r6, 3
/* 80D4B714  4B 61 65 D4 */	b __destroy_arr
/* 80D4B718  38 7F 00 9C */	addi r3, r31, 0x9c
/* 80D4B71C  3C 80 80 D5 */	lis r4, __dt__4cXyzFv@ha
/* 80D4B720  38 84 AF 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80D4B724  38 A0 00 0C */	li r5, 0xc
/* 80D4B728  38 C0 00 03 */	li r6, 3
/* 80D4B72C  4B 61 65 BC */	b __destroy_arr
/* 80D4B730  38 7F 00 78 */	addi r3, r31, 0x78
/* 80D4B734  3C 80 80 D5 */	lis r4, __dt__4cXyzFv@ha
/* 80D4B738  38 84 AF 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80D4B73C  38 A0 00 0C */	li r5, 0xc
/* 80D4B740  38 C0 00 03 */	li r6, 3
/* 80D4B744  4B 61 65 A4 */	b __destroy_arr
/* 80D4B748  38 7F 00 54 */	addi r3, r31, 0x54
/* 80D4B74C  3C 80 80 D5 */	lis r4, __dt__4cXyzFv@ha
/* 80D4B750  38 84 AF 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80D4B754  38 A0 00 0C */	li r5, 0xc
/* 80D4B758  38 C0 00 03 */	li r6, 3
/* 80D4B75C  4B 61 65 8C */	b __destroy_arr
/* 80D4B760  38 7F 00 30 */	addi r3, r31, 0x30
/* 80D4B764  3C 80 80 D5 */	lis r4, __dt__4cXyzFv@ha
/* 80D4B768  38 84 AF 90 */	addi r4, r4, __dt__4cXyzFv@l
/* 80D4B76C  38 A0 00 0C */	li r5, 0xc
/* 80D4B770  38 C0 00 03 */	li r6, 3
/* 80D4B774  4B 61 65 74 */	b __destroy_arr
/* 80D4B778  28 1F 00 00 */	cmplwi r31, 0
/* 80D4B77C  41 82 00 10 */	beq lbl_80D4B78C
/* 80D4B780  3C 60 80 D5 */	lis r3, __vt__18daNpcT_ActorMngr_c@ha
/* 80D4B784  38 03 C6 F0 */	addi r0, r3, __vt__18daNpcT_ActorMngr_c@l
/* 80D4B788  90 1F 00 04 */	stw r0, 4(r31)
lbl_80D4B78C:
/* 80D4B78C  7F C0 07 35 */	extsh. r0, r30
/* 80D4B790  40 81 00 0C */	ble lbl_80D4B79C
/* 80D4B794  7F E3 FB 78 */	mr r3, r31
/* 80D4B798  4B 58 35 A4 */	b __dl__FPv
lbl_80D4B79C:
/* 80D4B79C  7F E3 FB 78 */	mr r3, r31
/* 80D4B7A0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D4B7A4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80D4B7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D4B7AC  7C 08 03 A6 */	mtlr r0
/* 80D4B7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D4B7B4  4E 80 00 20 */	blr 
