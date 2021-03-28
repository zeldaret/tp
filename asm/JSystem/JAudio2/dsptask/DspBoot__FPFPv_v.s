lbl_8029E720:
/* 8029E720  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029E724  7C 08 02 A6 */	mflr r0
/* 8029E728  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029E72C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029E730  7C 7F 1B 78 */	mr r31, r3
/* 8029E734  48 00 01 AD */	bl DspInitWork__Fv
/* 8029E738  3C 80 80 3C */	lis r4, jdsp@ha
/* 8029E73C  3C 60 80 43 */	lis r3, AUDIO_YIELD_BUFFER@ha
/* 8029E740  38 A4 79 20 */	addi r5, r4, jdsp@l
/* 8029E744  3C C0 80 43 */	lis r6, audio_task@ha
/* 8029E748  38 83 1F E0 */	addi r4, r3, AUDIO_YIELD_BUFFER@l
/* 8029E74C  3C 60 80 2A */	lis r3, DspHandShake__FPv@ha
/* 8029E750  39 26 1F 80 */	addi r9, r6, audio_task@l
/* 8029E754  38 C0 00 00 */	li r6, 0
/* 8029E758  3D 05 80 00 */	addis r8, r5, 0x8000
/* 8029E75C  3C A4 80 00 */	addis r5, r4, 0x8000
/* 8029E760  38 03 E6 E0 */	addi r0, r3, DspHandShake__FPv@l
/* 8029E764  39 40 00 F0 */	li r10, 0xf0
/* 8029E768  38 E0 1F 00 */	li r7, 0x1f00
/* 8029E76C  38 80 20 00 */	li r4, 0x2000
/* 8029E770  38 60 00 10 */	li r3, 0x10
/* 8029E774  91 49 00 04 */	stw r10, 4(r9)
/* 8029E778  91 09 00 0C */	stw r8, 0xc(r9)
/* 8029E77C  90 E9 00 10 */	stw r7, 0x10(r9)
/* 8029E780  90 C9 00 14 */	stw r6, 0x14(r9)
/* 8029E784  90 A9 00 18 */	stw r5, 0x18(r9)
/* 8029E788  90 89 00 1C */	stw r4, 0x1c(r9)
/* 8029E78C  90 C9 00 20 */	stw r6, 0x20(r9)
/* 8029E790  B0 C9 00 24 */	sth r6, 0x24(r9)
/* 8029E794  B0 69 00 26 */	sth r3, 0x26(r9)
/* 8029E798  90 09 00 28 */	stw r0, 0x28(r9)
/* 8029E79C  90 C9 00 2C */	stw r6, 0x2c(r9)
/* 8029E7A0  90 C9 00 30 */	stw r6, 0x30(r9)
/* 8029E7A4  93 E9 00 34 */	stw r31, 0x34(r9)
/* 8029E7A8  48 0B 3D 15 */	bl DSPInit
/* 8029E7AC  3C 60 80 43 */	lis r3, audio_task@ha
/* 8029E7B0  38 63 1F 80 */	addi r3, r3, audio_task@l
/* 8029E7B4  48 00 02 ED */	bl DSPAddPriorTask__FP15STRUCT_DSP_TASK
/* 8029E7B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029E7BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029E7C0  7C 08 03 A6 */	mtlr r0
/* 8029E7C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8029E7C8  4E 80 00 20 */	blr 
