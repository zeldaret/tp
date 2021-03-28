lbl_8028E60C:
/* 8028E60C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028E610  7C 08 02 A6 */	mflr r0
/* 8028E614  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028E618  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028E61C  93 C1 00 08 */	stw r30, 8(r1)
/* 8028E620  7C 7F 1B 78 */	mr r31, r3
/* 8028E624  7C 9E 23 78 */	mr r30, r4
/* 8028E628  7F E5 FB 78 */	mr r5, r31
/* 8028E62C  3C 60 80 3C */	lis r3, __vt__Q27JStudio8TAdaptor@ha
/* 8028E630  38 03 56 10 */	addi r0, r3, __vt__Q27JStudio8TAdaptor@l
/* 8028E634  90 1F 00 00 */	stw r0, 0(r31)
/* 8028E638  38 00 00 00 */	li r0, 0
/* 8028E63C  90 1F 00 04 */	stw r0, 4(r31)
/* 8028E640  38 65 00 10 */	addi r3, r5, 0x10
/* 8028E644  90 7F 00 08 */	stw r3, 8(r31)
/* 8028E648  38 00 00 14 */	li r0, 0x14
/* 8028E64C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8028E650  3C 80 80 3C */	lis r4, __vt__Q27JStudio17TAdaptor_particle@ha
/* 8028E654  38 04 53 CC */	addi r0, r4, __vt__Q27JStudio17TAdaptor_particle@l
/* 8028E658  90 1F 00 00 */	stw r0, 0(r31)
/* 8028E65C  3C 80 80 29 */	lis r4, __ct__Q27JStudio14TVariableValueFv@ha
/* 8028E660  38 84 B5 68 */	addi r4, r4, __ct__Q27JStudio14TVariableValueFv@l
/* 8028E664  38 A0 00 00 */	li r5, 0
/* 8028E668  38 C0 00 14 */	li r6, 0x14
/* 8028E66C  38 E0 00 14 */	li r7, 0x14
/* 8028E670  48 0D 36 F1 */	bl __construct_array
/* 8028E674  3C 60 80 3C */	lis r3, __vt__Q217JStudio_JParticle17TAdaptor_particle@ha
/* 8028E678  38 03 5B 0C */	addi r0, r3, __vt__Q217JStudio_JParticle17TAdaptor_particle@l
/* 8028E67C  90 1F 00 00 */	stw r0, 0(r31)
/* 8028E680  93 DF 01 A0 */	stw r30, 0x1a0(r31)
/* 8028E684  38 80 00 00 */	li r4, 0
/* 8028E688  90 9F 01 A4 */	stw r4, 0x1a4(r31)
/* 8028E68C  3C 60 80 3B */	lis r3, __vt__18JPAEmitterCallBack@ha
/* 8028E690  38 03 85 78 */	addi r0, r3, __vt__18JPAEmitterCallBack@l
/* 8028E694  90 1F 01 A8 */	stw r0, 0x1a8(r31)
/* 8028E698  3C 60 80 3C */	lis r3, __vt__Q317JStudio_JParticle17TAdaptor_particle21TJPACallback_emitter_@ha
/* 8028E69C  38 03 5A F0 */	addi r0, r3, __vt__Q317JStudio_JParticle17TAdaptor_particle21TJPACallback_emitter_@l
/* 8028E6A0  90 1F 01 A8 */	stw r0, 0x1a8(r31)
/* 8028E6A4  93 FF 01 AC */	stw r31, 0x1ac(r31)
/* 8028E6A8  90 9F 01 B0 */	stw r4, 0x1b0(r31)
/* 8028E6AC  98 9F 01 B4 */	stb r4, 0x1b4(r31)
/* 8028E6B0  98 9F 01 B5 */	stb r4, 0x1b5(r31)
/* 8028E6B4  98 9F 01 B6 */	stb r4, 0x1b6(r31)
/* 8028E6B8  98 9F 01 B7 */	stb r4, 0x1b7(r31)
/* 8028E6BC  98 9F 01 B8 */	stb r4, 0x1b8(r31)
/* 8028E6C0  38 00 FF FF */	li r0, -1
/* 8028E6C4  90 1F 01 BC */	stw r0, 0x1bc(r31)
/* 8028E6C8  90 9F 01 C0 */	stw r4, 0x1c0(r31)
/* 8028E6CC  90 9F 01 C4 */	stw r4, 0x1c4(r31)
/* 8028E6D0  90 9F 01 C8 */	stw r4, 0x1c8(r31)
/* 8028E6D4  90 9F 01 CC */	stw r4, 0x1cc(r31)
/* 8028E6D8  90 9F 01 D0 */	stw r4, 0x1d0(r31)
/* 8028E6DC  90 1F 01 D4 */	stw r0, 0x1d4(r31)
/* 8028E6E0  98 9F 01 D8 */	stb r4, 0x1d8(r31)
/* 8028E6E4  7F E3 FB 78 */	mr r3, r31
/* 8028E6E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028E6EC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028E6F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028E6F4  7C 08 03 A6 */	mtlr r0
/* 8028E6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028E6FC  4E 80 00 20 */	blr 
