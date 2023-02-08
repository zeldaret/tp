lbl_8028E700:
/* 8028E700  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028E704  7C 08 02 A6 */	mflr r0
/* 8028E708  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028E70C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028E710  93 C1 00 08 */	stw r30, 8(r1)
/* 8028E714  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028E718  7C 9F 23 78 */	mr r31, r4
/* 8028E71C  41 82 00 28 */	beq lbl_8028E744
/* 8028E720  3C 80 80 3C */	lis r4, __vt__Q317JStudio_JParticle17TAdaptor_particle21TJPACallback_emitter_@ha /* 0x803C5AF0@ha */
/* 8028E724  38 04 5A F0 */	addi r0, r4, __vt__Q317JStudio_JParticle17TAdaptor_particle21TJPACallback_emitter_@l /* 0x803C5AF0@l */
/* 8028E728  90 1E 00 00 */	stw r0, 0(r30)
/* 8028E72C  38 80 00 00 */	li r4, 0
/* 8028E730  4B FE FF 75 */	bl __dt__18JPAEmitterCallBackFv
/* 8028E734  7F E0 07 35 */	extsh. r0, r31
/* 8028E738  40 81 00 0C */	ble lbl_8028E744
/* 8028E73C  7F C3 F3 78 */	mr r3, r30
/* 8028E740  48 04 05 FD */	bl __dl__FPv
lbl_8028E744:
/* 8028E744  7F C3 F3 78 */	mr r3, r30
/* 8028E748  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028E74C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028E750  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028E754  7C 08 03 A6 */	mtlr r0
/* 8028E758  38 21 00 10 */	addi r1, r1, 0x10
/* 8028E75C  4E 80 00 20 */	blr 
