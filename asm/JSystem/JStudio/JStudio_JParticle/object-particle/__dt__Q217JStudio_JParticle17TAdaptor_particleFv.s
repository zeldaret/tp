lbl_8028E760:
/* 8028E760  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028E764  7C 08 02 A6 */	mflr r0
/* 8028E768  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028E76C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028E770  93 C1 00 08 */	stw r30, 8(r1)
/* 8028E774  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028E778  7C 9F 23 78 */	mr r31, r4
/* 8028E77C  41 82 00 B8 */	beq lbl_8028E834
/* 8028E780  3C 60 80 3C */	lis r3, __vt__Q217JStudio_JParticle17TAdaptor_particle@ha /* 0x803C5B0C@ha */
/* 8028E784  38 03 5B 0C */	addi r0, r3, __vt__Q217JStudio_JParticle17TAdaptor_particle@l /* 0x803C5B0C@l */
/* 8028E788  90 1E 00 00 */	stw r0, 0(r30)
/* 8028E78C  80 9E 01 A4 */	lwz r4, 0x1a4(r30)
/* 8028E790  28 04 00 00 */	cmplwi r4, 0
/* 8028E794  41 82 00 64 */	beq lbl_8028E7F8
/* 8028E798  88 1E 01 B6 */	lbz r0, 0x1b6(r30)
/* 8028E79C  28 00 00 00 */	cmplwi r0, 0
/* 8028E7A0  40 82 00 1C */	bne lbl_8028E7BC
/* 8028E7A4  80 7E 01 A0 */	lwz r3, 0x1a0(r30)
/* 8028E7A8  81 83 00 00 */	lwz r12, 0(r3)
/* 8028E7AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028E7B0  7D 89 03 A6 */	mtctr r12
/* 8028E7B4  4E 80 04 21 */	bctrl 
/* 8028E7B8  48 00 00 40 */	b lbl_8028E7F8
lbl_8028E7BC:
/* 8028E7BC  88 1E 01 B4 */	lbz r0, 0x1b4(r30)
/* 8028E7C0  28 00 00 00 */	cmplwi r0, 0
/* 8028E7C4  41 82 00 20 */	beq lbl_8028E7E4
/* 8028E7C8  80 1E 01 B0 */	lwz r0, 0x1b0(r30)
/* 8028E7CC  90 04 00 EC */	stw r0, 0xec(r4)
/* 8028E7D0  80 7E 01 A4 */	lwz r3, 0x1a4(r30)
/* 8028E7D4  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8028E7D8  54 00 06 B0 */	rlwinm r0, r0, 0, 0x1a, 0x18
/* 8028E7DC  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8028E7E0  48 00 00 18 */	b lbl_8028E7F8
lbl_8028E7E4:
/* 8028E7E4  80 7E 01 A0 */	lwz r3, 0x1a0(r30)
/* 8028E7E8  81 83 00 00 */	lwz r12, 0(r3)
/* 8028E7EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028E7F0  7D 89 03 A6 */	mtctr r12
/* 8028E7F4  4E 80 04 21 */	bctrl 
lbl_8028E7F8:
/* 8028E7F8  34 1E 01 A8 */	addic. r0, r30, 0x1a8
/* 8028E7FC  41 82 00 1C */	beq lbl_8028E818
/* 8028E800  3C 60 80 3C */	lis r3, __vt__Q317JStudio_JParticle17TAdaptor_particle21TJPACallback_emitter_@ha /* 0x803C5AF0@ha */
/* 8028E804  38 03 5A F0 */	addi r0, r3, __vt__Q317JStudio_JParticle17TAdaptor_particle21TJPACallback_emitter_@l /* 0x803C5AF0@l */
/* 8028E808  90 1E 01 A8 */	stw r0, 0x1a8(r30)
/* 8028E80C  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8028E810  38 80 00 00 */	li r4, 0
/* 8028E814  4B FE FE 91 */	bl __dt__18JPAEmitterCallBackFv
lbl_8028E818:
/* 8028E818  7F C3 F3 78 */	mr r3, r30
/* 8028E81C  38 80 00 00 */	li r4, 0
/* 8028E820  4B FF 8E ED */	bl __dt__Q27JStudio17TAdaptor_particleFv
/* 8028E824  7F E0 07 35 */	extsh. r0, r31
/* 8028E828  40 81 00 0C */	ble lbl_8028E834
/* 8028E82C  7F C3 F3 78 */	mr r3, r30
/* 8028E830  48 04 05 0D */	bl __dl__FPv
lbl_8028E834:
/* 8028E834  7F C3 F3 78 */	mr r3, r30
/* 8028E838  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028E83C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028E840  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028E844  7C 08 03 A6 */	mtlr r0
/* 8028E848  38 21 00 10 */	addi r1, r1, 0x10
/* 8028E84C  4E 80 00 20 */	blr 
