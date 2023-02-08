lbl_8025E66C:
/* 8025E66C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025E670  7C 08 02 A6 */	mflr r0
/* 8025E674  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025E678  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8025E67C  7C 7F 1B 78 */	mr r31, r3
/* 8025E680  38 60 01 18 */	li r3, 0x118
/* 8025E684  48 07 05 C9 */	bl __nw__FUl
/* 8025E688  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E68C  41 82 00 0C */	beq lbl_8025E698
/* 8025E690  48 09 9E 09 */	bl __ct__9J2DScreenFv
/* 8025E694  7C 60 1B 78 */	mr r0, r3
lbl_8025E698:
/* 8025E698  90 1F 00 04 */	stw r0, 4(r31)
/* 8025E69C  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E6A0  3C 80 80 3A */	lis r4, d_d_timer__stringBase0@ha /* 0x8039A3D8@ha */
/* 8025E6A4  38 84 A3 D8 */	addi r4, r4, d_d_timer__stringBase0@l /* 0x8039A3D8@l */
/* 8025E6A8  38 84 00 64 */	addi r4, r4, 0x64
/* 8025E6AC  3C A0 00 02 */	lis r5, 2
/* 8025E6B0  80 DF 00 7C */	lwz r6, 0x7c(r31)
/* 8025E6B4  48 09 9F 95 */	bl setPriority__9J2DScreenFPCcUlP10JKRArchive
/* 8025E6B8  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E6BC  4B FF 6A 2D */	bl dPaneClass_showNullPane__FP9J2DScreen
/* 8025E6C0  38 60 00 6C */	li r3, 0x6c
/* 8025E6C4  48 07 05 89 */	bl __nw__FUl
/* 8025E6C8  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E6CC  41 82 00 28 */	beq lbl_8025E6F4
/* 8025E6D0  80 9F 00 04 */	lwz r4, 4(r31)
/* 8025E6D4  3C A0 63 6F */	lis r5, 0x636F /* 0x636F5F6E@ha */
/* 8025E6D8  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x636F5F6E@l */
/* 8025E6DC  3C A0 00 74 */	lis r5, 0x0074 /* 0x0074615F@ha */
/* 8025E6E0  38 A5 61 5F */	addi r5, r5, 0x615F /* 0x0074615F@l */
/* 8025E6E4  38 E0 00 02 */	li r7, 2
/* 8025E6E8  39 00 00 00 */	li r8, 0
/* 8025E6EC  4B FF 52 99 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8025E6F0  7C 60 1B 78 */	mr r0, r3
lbl_8025E6F4:
/* 8025E6F4  90 1F 00 10 */	stw r0, 0x10(r31)
/* 8025E6F8  38 60 00 6C */	li r3, 0x6c
/* 8025E6FC  48 07 05 51 */	bl __nw__FUl
/* 8025E700  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E704  41 82 00 24 */	beq lbl_8025E728
/* 8025E708  80 9F 00 04 */	lwz r4, 4(r31)
/* 8025E70C  3C A0 75 6D */	lis r5, 0x756D /* 0x756D5F6E@ha */
/* 8025E710  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x756D5F6E@l */
/* 8025E714  38 A0 00 6E */	li r5, 0x6e
/* 8025E718  38 E0 00 02 */	li r7, 2
/* 8025E71C  39 00 00 00 */	li r8, 0
/* 8025E720  4B FF 52 65 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8025E724  7C 60 1B 78 */	mr r0, r3
lbl_8025E728:
/* 8025E728  90 1F 00 14 */	stw r0, 0x14(r31)
/* 8025E72C  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 8025E730  C0 22 B5 40 */	lfs f1, lit_3919(r2)
/* 8025E734  4B FF 70 9D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8025E738  38 00 00 00 */	li r0, 0
/* 8025E73C  90 1F 00 18 */	stw r0, 0x18(r31)
/* 8025E740  38 60 00 6C */	li r3, 0x6c
/* 8025E744  48 07 05 09 */	bl __nw__FUl
/* 8025E748  7C 60 1B 79 */	or. r0, r3, r3
/* 8025E74C  41 82 00 28 */	beq lbl_8025E774
/* 8025E750  80 9F 00 04 */	lwz r4, 4(r31)
/* 8025E754  3C A0 65 74 */	lis r5, 0x6574 /* 0x65745F6E@ha */
/* 8025E758  38 C5 5F 6E */	addi r6, r5, 0x5F6E /* 0x65745F6E@l */
/* 8025E75C  3C A0 74 61 */	lis r5, 0x7461 /* 0x74617267@ha */
/* 8025E760  38 A5 72 67 */	addi r5, r5, 0x7267 /* 0x74617267@l */
/* 8025E764  38 E0 00 02 */	li r7, 2
/* 8025E768  39 00 00 00 */	li r8, 0
/* 8025E76C  4B FF 52 19 */	bl __ct__8CPaneMgrFP9J2DScreenUxUcP10JKRExpHeap
/* 8025E770  7C 60 1B 78 */	mr r0, r3
lbl_8025E774:
/* 8025E774  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 8025E778  80 7F 00 1C */	lwz r3, 0x1c(r31)
/* 8025E77C  C0 22 B5 40 */	lfs f1, lit_3919(r2)
/* 8025E780  4B FF 70 51 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 8025E784  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E788  3C 80 72 67 */	lis r4, 0x7267 /* 0x72676574@ha */
/* 8025E78C  38 C4 65 74 */	addi r6, r4, 0x6574 /* 0x72676574@l */
/* 8025E790  3C 80 77 5F */	lis r4, 0x775F /* 0x775F7461@ha */
/* 8025E794  38 A4 74 61 */	addi r5, r4, 0x7461 /* 0x775F7461@l */
/* 8025E798  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E79C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E7A0  7D 89 03 A6 */	mtctr r12
/* 8025E7A4  4E 80 04 21 */	bctrl 
/* 8025E7A8  38 00 00 00 */	li r0, 0
/* 8025E7AC  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8025E7B0  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E7B4  3C 80 72 67 */	lis r4, 0x7267 /* 0x72676574@ha */
/* 8025E7B8  38 C4 65 74 */	addi r6, r4, 0x6574 /* 0x72676574@l */
/* 8025E7BC  38 A0 74 61 */	li r5, 0x7461
/* 8025E7C0  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E7C4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E7C8  7D 89 03 A6 */	mtctr r12
/* 8025E7CC  4E 80 04 21 */	bctrl 
/* 8025E7D0  38 00 00 01 */	li r0, 1
/* 8025E7D4  98 03 00 B0 */	stb r0, 0xb0(r3)
/* 8025E7D8  38 E0 00 00 */	li r7, 0
/* 8025E7DC  38 60 00 00 */	li r3, 0
/* 8025E7E0  38 A0 00 00 */	li r5, 0
lbl_8025E7E4:
/* 8025E7E4  38 80 00 00 */	li r4, 0
/* 8025E7E8  7C DF 1A 14 */	add r6, r31, r3
/* 8025E7EC  38 00 00 02 */	li r0, 2
/* 8025E7F0  7C 09 03 A6 */	mtctr r0
lbl_8025E7F4:
/* 8025E7F4  38 04 00 5C */	addi r0, r4, 0x5c
/* 8025E7F8  7C A6 01 2E */	stwx r5, r6, r0
/* 8025E7FC  38 84 00 04 */	addi r4, r4, 4
/* 8025E800  42 00 FF F4 */	bdnz lbl_8025E7F4
/* 8025E804  38 E7 00 01 */	addi r7, r7, 1
/* 8025E808  2C 07 00 02 */	cmpwi r7, 2
/* 8025E80C  38 63 00 08 */	addi r3, r3, 8
/* 8025E810  41 80 FF D4 */	blt lbl_8025E7E4
/* 8025E814  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E818  3C 80 75 6D */	lis r4, 0x756D /* 0x756D5F31@ha */
/* 8025E81C  38 C4 5F 31 */	addi r6, r4, 0x5F31 /* 0x756D5F31@l */
/* 8025E820  38 A0 00 6E */	li r5, 0x6e
/* 8025E824  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E828  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E82C  7D 89 03 A6 */	mtctr r12
/* 8025E830  4E 80 04 21 */	bctrl 
/* 8025E834  90 7F 00 6C */	stw r3, 0x6c(r31)
/* 8025E838  38 00 00 00 */	li r0, 0
/* 8025E83C  90 1F 00 70 */	stw r0, 0x70(r31)
/* 8025E840  80 7F 00 04 */	lwz r3, 4(r31)
/* 8025E844  3C 80 75 6D */	lis r4, 0x756D /* 0x756D5F30@ha */
/* 8025E848  38 C4 5F 30 */	addi r6, r4, 0x5F30 /* 0x756D5F30@l */
/* 8025E84C  38 A0 00 6E */	li r5, 0x6e
/* 8025E850  81 83 00 00 */	lwz r12, 0(r3)
/* 8025E854  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 8025E858  7D 89 03 A6 */	mtctr r12
/* 8025E85C  4E 80 04 21 */	bctrl 
/* 8025E860  90 7F 00 74 */	stw r3, 0x74(r31)
/* 8025E864  38 A0 00 00 */	li r5, 0
/* 8025E868  90 BF 00 78 */	stw r5, 0x78(r31)
/* 8025E86C  38 E0 00 00 */	li r7, 0
/* 8025E870  38 60 00 00 */	li r3, 0
lbl_8025E874:
/* 8025E874  38 80 00 00 */	li r4, 0
/* 8025E878  7C DF 1A 14 */	add r6, r31, r3
/* 8025E87C  38 00 00 02 */	li r0, 2
/* 8025E880  7C 09 03 A6 */	mtctr r0
lbl_8025E884:
/* 8025E884  38 04 00 2C */	addi r0, r4, 0x2c
/* 8025E888  7C A6 01 2E */	stwx r5, r6, r0
/* 8025E88C  38 84 00 04 */	addi r4, r4, 4
/* 8025E890  42 00 FF F4 */	bdnz lbl_8025E884
/* 8025E894  38 E7 00 01 */	addi r7, r7, 1
/* 8025E898  2C 07 00 06 */	cmpwi r7, 6
/* 8025E89C  38 63 00 08 */	addi r3, r3, 8
/* 8025E8A0  41 80 FF D4 */	blt lbl_8025E874
/* 8025E8A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8025E8A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025E8AC  7C 08 03 A6 */	mtlr r0
/* 8025E8B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8025E8B4  4E 80 00 20 */	blr 
