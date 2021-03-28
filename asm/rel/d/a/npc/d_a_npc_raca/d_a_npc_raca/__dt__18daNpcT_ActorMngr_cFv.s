lbl_80AB8040:
/* 80AB8040  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB8044  7C 08 02 A6 */	mflr r0
/* 80AB8048  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB804C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB8050  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AB8054  41 82 00 1C */	beq lbl_80AB8070
/* 80AB8058  3C A0 80 AC */	lis r5, __vt__18daNpcT_ActorMngr_c@ha
/* 80AB805C  38 05 94 18 */	addi r0, r5, __vt__18daNpcT_ActorMngr_c@l
/* 80AB8060  90 1F 00 04 */	stw r0, 4(r31)
/* 80AB8064  7C 80 07 35 */	extsh. r0, r4
/* 80AB8068  40 81 00 08 */	ble lbl_80AB8070
/* 80AB806C  4B 81 6C D0 */	b __dl__FPv
lbl_80AB8070:
/* 80AB8070  7F E3 FB 78 */	mr r3, r31
/* 80AB8074  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB8078  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB807C  7C 08 03 A6 */	mtlr r0
/* 80AB8080  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB8084  4E 80 00 20 */	blr 
