lbl_8057413C:
/* 8057413C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80574140  7C 08 02 A6 */	mflr r0
/* 80574144  90 01 00 24 */	stw r0, 0x24(r1)
/* 80574148  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8057414C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80574150  7C 7E 1B 78 */	mr r30, r3
/* 80574154  3C 60 80 57 */	lis r3, m__17daNpc_Tkj_Param_c@ha
/* 80574158  3B E3 65 98 */	addi r31, r3, m__17daNpc_Tkj_Param_c@l
/* 8057415C  38 7E 0D 24 */	addi r3, r30, 0xd24
/* 80574160  38 80 00 00 */	li r4, 0
/* 80574164  38 1E 0E 38 */	addi r0, r30, 0xe38
/* 80574168  7C A3 00 50 */	subf r5, r3, r0
/* 8057416C  4B A8 F2 EC */	b memset
/* 80574170  38 7E 0B 50 */	addi r3, r30, 0xb50
/* 80574174  4B BD 17 24 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80574178  38 7E 0B 74 */	addi r3, r30, 0xb74
/* 8057417C  4B BD 17 1C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80574180  38 7E 0B 98 */	addi r3, r30, 0xb98
/* 80574184  4B BD 15 50 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80574188  38 7E 0B A0 */	addi r3, r30, 0xba0
/* 8057418C  4B BD 15 48 */	b initialize__18daNpcT_ActorMngr_cFv
/* 80574190  38 7E 0B A8 */	addi r3, r30, 0xba8
/* 80574194  4B BD 2B 04 */	b initialize__15daNpcT_JntAnm_cFv
/* 80574198  38 A0 00 00 */	li r5, 0
/* 8057419C  38 60 00 00 */	li r3, 0
/* 805741A0  7C A4 2B 78 */	mr r4, r5
/* 805741A4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 805741A8  38 00 00 02 */	li r0, 2
/* 805741AC  7C 09 03 A6 */	mtctr r0
lbl_805741B0:
/* 805741B0  7C DE 22 14 */	add r6, r30, r4
/* 805741B4  B0 A6 0D 08 */	sth r5, 0xd08(r6)
/* 805741B8  B0 A6 0D 0A */	sth r5, 0xd0a(r6)
/* 805741BC  B0 A6 0D 0C */	sth r5, 0xd0c(r6)
/* 805741C0  38 03 0D 14 */	addi r0, r3, 0xd14
/* 805741C4  7C 1E 05 2E */	stfsx f0, r30, r0
/* 805741C8  38 63 00 04 */	addi r3, r3, 4
/* 805741CC  38 84 00 06 */	addi r4, r4, 6
/* 805741D0  42 00 FF E0 */	bdnz lbl_805741B0
/* 805741D4  38 00 00 00 */	li r0, 0
/* 805741D8  B0 1E 0D 1C */	sth r0, 0xd1c(r30)
/* 805741DC  B0 1E 0D 1E */	sth r0, 0xd1e(r30)
/* 805741E0  98 1E 0D 20 */	stb r0, 0xd20(r30)
/* 805741E4  38 00 FF FF */	li r0, -1
/* 805741E8  90 1E 0D 90 */	stw r0, 0xd90(r30)
/* 805741EC  38 00 00 01 */	li r0, 1
/* 805741F0  98 1E 0E 26 */	stb r0, 0xe26(r30)
/* 805741F4  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 805741F8  4B CF 37 5C */	b cM_rndF__Ff
/* 805741FC  FC 00 08 1E */	fctiwz f0, f1
/* 80574200  D8 01 00 08 */	stfd f0, 8(r1)
/* 80574204  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80574208  B0 1E 0E 1A */	sth r0, 0xe1a(r30)
/* 8057420C  C0 1F 00 A4 */	lfs f0, 0xa4(r31)
/* 80574210  D0 1E 0D E0 */	stfs f0, 0xde0(r30)
/* 80574214  D0 1E 0D E4 */	stfs f0, 0xde4(r30)
/* 80574218  38 7E 0F 84 */	addi r3, r30, 0xf84
/* 8057421C  38 80 00 00 */	li r4, 0
/* 80574220  38 1E 0F 9C */	addi r0, r30, 0xf9c
/* 80574224  7C A3 00 50 */	subf r5, r3, r0
/* 80574228  4B A8 F2 30 */	b memset
/* 8057422C  80 7E 09 6C */	lwz r3, 0x96c(r30)
/* 80574230  28 03 00 00 */	cmplwi r3, 0
/* 80574234  41 82 00 08 */	beq lbl_8057423C
/* 80574238  4B BD 15 2C */	b initialize__15daNpcT_MatAnm_cFv
lbl_8057423C:
/* 8057423C  7F C3 F3 78 */	mr r3, r30
/* 80574240  A8 9E 04 B6 */	lha r4, 0x4b6(r30)
/* 80574244  4B BD 67 D4 */	b setAngle__8daNpcT_cFs
/* 80574248  38 00 FF FF */	li r0, -1
/* 8057424C  90 1E 0F A0 */	stw r0, 0xfa0(r30)
/* 80574250  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80574254  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80574258  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8057425C  7C 08 03 A6 */	mtlr r0
/* 80574260  38 21 00 20 */	addi r1, r1, 0x20
/* 80574264  4E 80 00 20 */	blr 
