lbl_80350084:
/* 80350084  7C 08 02 A6 */	mflr r0
/* 80350088  90 01 00 04 */	stw r0, 4(r1)
/* 8035008C  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 80350090  93 E1 00 14 */	stw r31, 0x14(r1)
/* 80350094  93 C1 00 10 */	stw r30, 0x10(r1)
/* 80350098  3B C3 00 00 */	addi r30, r3, 0
/* 8035009C  80 0D 93 08 */	lwz r0, __AI_init_flag(r13)
/* 803500A0  2C 00 00 01 */	cmpwi r0, 1
/* 803500A4  41 82 01 34 */	beq lbl_803501D8
/* 803500A8  80 6D 84 C0 */	lwz r3, __AIVersion(r13)
/* 803500AC  4B FE A7 C9 */	bl OSRegisterVersion
/* 803500B0  3C 60 80 00 */	lis r3, 0x8000 /* 0x800000F8@ha */
/* 803500B4  80 03 00 F8 */	lwz r0, 0x00F8(r3)
/* 803500B8  3C 60 43 1C */	lis r3, 0x431C /* 0x431BDE83@ha */
/* 803500BC  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000A428@ha */
/* 803500C0  54 00 F0 BE */	srwi r0, r0, 2
/* 803500C4  38 63 DE 83 */	addi r3, r3, 0xDE83 /* 0x431BDE83@l */
/* 803500C8  7C 03 00 16 */	mulhwu r0, r3, r0
/* 803500CC  54 09 8B FE */	srwi r9, r0, 0xf
/* 803500D0  38 A4 A4 28 */	addi r5, r4, 0xA428 /* 0x0000A428@l */
/* 803500D4  38 64 A4 10 */	addi r3, r4, -23536
/* 803500D8  38 04 F6 18 */	addi r0, r4, -2536
/* 803500DC  3C 80 10 62 */	lis r4, 0x1062 /* 0x10624DD3@ha */
/* 803500E0  7C E9 29 D6 */	mullw r7, r9, r5
/* 803500E4  39 44 4D D3 */	addi r10, r4, 0x4DD3 /* 0x10624DD3@l */
/* 803500E8  7C A9 19 D6 */	mullw r5, r9, r3
/* 803500EC  7C 89 01 D6 */	mullw r4, r9, r0
/* 803500F0  1D 09 7B 24 */	mulli r8, r9, 0x7b24
/* 803500F4  1C 69 0B B8 */	mulli r3, r9, 0xbb8
/* 803500F8  7D 0A 40 16 */	mulhwu r8, r10, r8
/* 803500FC  7C EA 38 16 */	mulhwu r7, r10, r7
/* 80350100  7C AA 28 16 */	mulhwu r5, r10, r5
/* 80350104  7C 8A 20 16 */	mulhwu r4, r10, r4
/* 80350108  7C 6A 18 16 */	mulhwu r3, r10, r3
/* 8035010C  55 08 BA 7E */	srwi r8, r8, 9
/* 80350110  54 E7 BA 7E */	srwi r7, r7, 9
/* 80350114  91 0D 93 14 */	stw r8, data_80451894(r13)
/* 80350118  54 A5 BA 7E */	srwi r5, r5, 9
/* 8035011C  54 84 BA 7E */	srwi r4, r4, 9
/* 80350120  90 ED 93 1C */	stw r7, data_8045189C(r13)
/* 80350124  3B E0 00 00 */	li r31, 0
/* 80350128  54 63 BA 7E */	srwi r3, r3, 9
/* 8035012C  90 AD 93 24 */	stw r5, data_804518A4(r13)
/* 80350130  3C C0 CC 00 */	lis r6, 0xCC00 /* 0xCC006C00@ha */
/* 80350134  90 6D 93 34 */	stw r3, data_804518B4(r13)
/* 80350138  38 60 00 01 */	li r3, 1
/* 8035013C  80 06 6C 00 */	lwz r0, 0x6C00(r6)
/* 80350140  90 8D 93 2C */	stw r4, data_804518AC(r13)
/* 80350144  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80350148  60 00 00 20 */	ori r0, r0, 0x20
/* 8035014C  93 ED 93 10 */	stw r31, bound_32KHz(r13)
/* 80350150  93 ED 93 18 */	stw r31, bound_48KHz(r13)
/* 80350154  93 ED 93 20 */	stw r31, min_wait(r13)
/* 80350158  93 ED 93 28 */	stw r31, max_wait(r13)
/* 8035015C  93 ED 93 30 */	stw r31, buffer(r13)
/* 80350160  80 A6 6C 04 */	lwz r5, 0x6c04(r6)
/* 80350164  90 06 6C 00 */	stw r0, 0x6c00(r6)
/* 80350168  54 A0 06 1E */	rlwinm r0, r5, 0, 0x18, 0xf
/* 8035016C  60 00 00 00 */	nop 
/* 80350170  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 80350174  80 06 6C 04 */	lwz r0, 0x6c04(r6)
/* 80350178  54 00 00 2E */	rlwinm r0, r0, 0, 0, 0x17
/* 8035017C  60 00 00 00 */	nop 
/* 80350180  90 06 6C 04 */	stw r0, 0x6c04(r6)
/* 80350184  93 E6 6C 0C */	stw r31, 0x6c0c(r6)
/* 80350188  4B FF FD C1 */	bl __AI_set_stream_sample_rate
/* 8035018C  38 60 00 00 */	li r3, 0
/* 80350190  4B FF FC C5 */	bl AISetDSPSampleRate
/* 80350194  3C 60 80 35 */	lis r3, __AIDHandler@ha
/* 80350198  93 ED 92 F8 */	stw r31, __AIS_Callback(r13)
/* 8035019C  38 83 02 6C */	addi r4, r3, __AIDHandler@l
/* 803501A0  93 ED 92 FC */	stw r31, __AID_Callback(r13)
/* 803501A4  38 60 00 05 */	li r3, 5
/* 803501A8  93 CD 93 00 */	stw r30, __CallbackStack(r13)
/* 803501AC  4B FE D5 95 */	bl __OSSetInterruptHandler
/* 803501B0  3C 60 04 00 */	lis r3, 0x400
/* 803501B4  4B FE D9 91 */	bl __OSUnmaskInterrupts
/* 803501B8  3C 60 80 35 */	lis r3, __AISHandler@ha
/* 803501BC  38 83 01 F0 */	addi r4, r3, __AISHandler@l
/* 803501C0  38 60 00 08 */	li r3, 8
/* 803501C4  4B FE D5 7D */	bl __OSSetInterruptHandler
/* 803501C8  3C 60 00 80 */	lis r3, 0x80
/* 803501CC  4B FE D9 79 */	bl __OSUnmaskInterrupts
/* 803501D0  38 00 00 01 */	li r0, 1
/* 803501D4  90 0D 93 08 */	stw r0, __AI_init_flag(r13)
lbl_803501D8:
/* 803501D8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 803501DC  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803501E0  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 803501E4  38 21 00 18 */	addi r1, r1, 0x18
/* 803501E8  7C 08 03 A6 */	mtlr r0
/* 803501EC  4E 80 00 20 */	blr 
