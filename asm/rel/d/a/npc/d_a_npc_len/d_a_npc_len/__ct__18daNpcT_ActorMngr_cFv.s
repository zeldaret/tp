lbl_80A68030:
/* 80A68030  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A68034  7C 08 02 A6 */	mflr r0
/* 80A68038  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A6803C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A68040  7C 7F 1B 78 */	mr r31, r3
/* 80A68044  3C 80 80 A7 */	lis r4, __vt__18daNpcT_ActorMngr_c@ha
/* 80A68048  38 04 99 40 */	addi r0, r4, __vt__18daNpcT_ActorMngr_c@l
/* 80A6804C  90 03 00 04 */	stw r0, 4(r3)
/* 80A68050  4B 6D D6 84 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80A68054  7F E3 FB 78 */	mr r3, r31
/* 80A68058  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A6805C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A68060  7C 08 03 A6 */	mtlr r0
/* 80A68064  38 21 00 10 */	addi r1, r1, 0x10
/* 80A68068  4E 80 00 20 */	blr 
