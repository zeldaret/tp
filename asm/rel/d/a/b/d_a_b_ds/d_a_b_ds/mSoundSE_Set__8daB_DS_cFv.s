lbl_805D80F0:
/* 805D80F0  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 805D80F4  7C 08 02 A6 */	mflr r0
/* 805D80F8  90 01 00 94 */	stw r0, 0x94(r1)
/* 805D80FC  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 805D8100  93 C1 00 88 */	stw r30, 0x88(r1)
/* 805D8104  7C 7E 1B 78 */	mr r30, r3
/* 805D8108  3C 60 80 5E */	lis r3, lit_3932@ha /* 0x805DCA54@ha */
/* 805D810C  3B E3 CA 54 */	addi r31, r3, lit_3932@l /* 0x805DCA54@l */
/* 805D8110  3C 60 80 5E */	lis r3, data_805DE1A4@ha /* 0x805DE1A4@ha */
/* 805D8114  38 A3 E1 A4 */	addi r5, r3, data_805DE1A4@l /* 0x805DE1A4@l */
/* 805D8118  88 05 00 00 */	lbz r0, 0(r5)
/* 805D811C  7C 00 07 75 */	extsb. r0, r0
/* 805D8120  40 82 00 2C */	bne lbl_805D814C
/* 805D8124  3C 80 00 07 */	lis r4, 0x0007 /* 0x000704CF@ha */
/* 805D8128  38 04 04 CF */	addi r0, r4, 0x04CF /* 0x000704CF@l */
/* 805D812C  3C 60 80 5E */	lis r3, mWaitDt@ha /* 0x805DE1A8@ha */
/* 805D8130  94 03 E1 A8 */	stwu r0, mWaitDt@l(r3)  /* 0x805DE1A8@l */
/* 805D8134  38 04 04 D0 */	addi r0, r4, 0x4d0
/* 805D8138  90 03 00 04 */	stw r0, 4(r3)
/* 805D813C  38 04 04 D1 */	addi r0, r4, 0x4d1
/* 805D8140  90 03 00 08 */	stw r0, 8(r3)
/* 805D8144  38 00 00 01 */	li r0, 1
/* 805D8148  98 05 00 00 */	stb r0, 0(r5)
lbl_805D814C:
/* 805D814C  80 7E 06 8C */	lwz r3, 0x68c(r30)
/* 805D8150  38 03 FF FA */	addi r0, r3, -6
/* 805D8154  28 00 00 38 */	cmplwi r0, 0x38
/* 805D8158  41 81 0B 94 */	bgt lbl_805D8CEC
/* 805D815C  3C 60 80 5E */	lis r3, lit_9985@ha /* 0x805DD820@ha */
/* 805D8160  38 63 D8 20 */	addi r3, r3, lit_9985@l /* 0x805DD820@l */
/* 805D8164  54 00 10 3A */	slwi r0, r0, 2
/* 805D8168  7C 03 00 2E */	lwzx r0, r3, r0
/* 805D816C  7C 09 03 A6 */	mtctr r0
/* 805D8170  4E 80 04 20 */	bctr 
lbl_805D8174:
/* 805D8174  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8178  38 63 00 0C */	addi r3, r3, 0xc
/* 805D817C  C0 3F 02 F8 */	lfs f1, 0x2f8(r31)
/* 805D8180  4B D5 02 AD */	bl checkPass__12J3DFrameCtrlFf
/* 805D8184  2C 03 00 00 */	cmpwi r3, 0
/* 805D8188  41 82 0B 64 */	beq lbl_805D8CEC
/* 805D818C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8190  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8194  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8198  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D819C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D81A0  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D81A4  80 7E 06 8C */	lwz r3, 0x68c(r30)
/* 805D81A8  38 03 FF C4 */	addi r0, r3, -60
/* 805D81AC  54 00 10 3A */	slwi r0, r0, 2
/* 805D81B0  3C 60 80 5E */	lis r3, mWaitDt@ha /* 0x805DE1A8@ha */
/* 805D81B4  38 63 E1 A8 */	addi r3, r3, mWaitDt@l /* 0x805DE1A8@l */
/* 805D81B8  7C 03 00 2E */	lwzx r0, r3, r0
/* 805D81BC  90 01 00 84 */	stw r0, 0x84(r1)
/* 805D81C0  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D81C4  38 81 00 84 */	addi r4, r1, 0x84
/* 805D81C8  38 A0 FF FF */	li r5, -1
/* 805D81CC  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D81D0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D81D4  7D 89 03 A6 */	mtctr r12
/* 805D81D8  4E 80 04 21 */	bctrl 
/* 805D81DC  48 00 0B 10 */	b lbl_805D8CEC
lbl_805D81E0:
/* 805D81E0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D81E4  38 63 00 0C */	addi r3, r3, 0xc
/* 805D81E8  C0 3F 02 10 */	lfs f1, 0x210(r31)
/* 805D81EC  4B D5 02 41 */	bl checkPass__12J3DFrameCtrlFf
/* 805D81F0  2C 03 00 00 */	cmpwi r3, 0
/* 805D81F4  41 82 00 44 */	beq lbl_805D8238
/* 805D81F8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D81FC  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8200  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8204  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8208  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D820C  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8210  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CE@ha */
/* 805D8214  38 03 04 CE */	addi r0, r3, 0x04CE /* 0x000704CE@l */
/* 805D8218  90 01 00 80 */	stw r0, 0x80(r1)
/* 805D821C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8220  38 81 00 80 */	addi r4, r1, 0x80
/* 805D8224  38 A0 FF FF */	li r5, -1
/* 805D8228  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D822C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D8230  7D 89 03 A6 */	mtctr r12
/* 805D8234  4E 80 04 21 */	bctrl 
lbl_805D8238:
/* 805D8238  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D823C  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8240  C0 3F 05 74 */	lfs f1, 0x574(r31)
/* 805D8244  4B D5 01 E9 */	bl checkPass__12J3DFrameCtrlFf
/* 805D8248  2C 03 00 00 */	cmpwi r3, 0
/* 805D824C  41 82 0A A0 */	beq lbl_805D8CEC
/* 805D8250  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8254  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8258  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D825C  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8260  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8264  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8268  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C2@ha */
/* 805D826C  38 03 04 C2 */	addi r0, r3, 0x04C2 /* 0x000704C2@l */
/* 805D8270  90 01 00 7C */	stw r0, 0x7c(r1)
/* 805D8274  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8278  38 81 00 7C */	addi r4, r1, 0x7c
/* 805D827C  38 A0 00 00 */	li r5, 0
/* 805D8280  38 C0 FF FF */	li r6, -1
/* 805D8284  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8288  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D828C  7D 89 03 A6 */	mtctr r12
/* 805D8290  4E 80 04 21 */	bctrl 
/* 805D8294  48 00 0A 58 */	b lbl_805D8CEC
lbl_805D8298:
/* 805D8298  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D829C  38 63 00 0C */	addi r3, r3, 0xc
/* 805D82A0  C0 3F 05 78 */	lfs f1, 0x578(r31)
/* 805D82A4  4B D5 01 89 */	bl checkPass__12J3DFrameCtrlFf
/* 805D82A8  2C 03 00 00 */	cmpwi r3, 0
/* 805D82AC  41 82 00 44 */	beq lbl_805D82F0
/* 805D82B0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D82B4  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D82B8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D82BC  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D82C0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D82C4  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D82C8  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CE@ha */
/* 805D82CC  38 03 04 CE */	addi r0, r3, 0x04CE /* 0x000704CE@l */
/* 805D82D0  90 01 00 78 */	stw r0, 0x78(r1)
/* 805D82D4  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D82D8  38 81 00 78 */	addi r4, r1, 0x78
/* 805D82DC  38 A0 FF FF */	li r5, -1
/* 805D82E0  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D82E4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D82E8  7D 89 03 A6 */	mtctr r12
/* 805D82EC  4E 80 04 21 */	bctrl 
lbl_805D82F0:
/* 805D82F0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D82F4  38 63 00 0C */	addi r3, r3, 0xc
/* 805D82F8  C0 3F 05 7C */	lfs f1, 0x57c(r31)
/* 805D82FC  4B D5 01 31 */	bl checkPass__12J3DFrameCtrlFf
/* 805D8300  2C 03 00 00 */	cmpwi r3, 0
/* 805D8304  41 82 09 E8 */	beq lbl_805D8CEC
/* 805D8308  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D830C  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8310  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8314  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8318  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D831C  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8320  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C3@ha */
/* 805D8324  38 03 04 C3 */	addi r0, r3, 0x04C3 /* 0x000704C3@l */
/* 805D8328  90 01 00 74 */	stw r0, 0x74(r1)
/* 805D832C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8330  38 81 00 74 */	addi r4, r1, 0x74
/* 805D8334  38 A0 00 00 */	li r5, 0
/* 805D8338  38 C0 FF FF */	li r6, -1
/* 805D833C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8340  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D8344  7D 89 03 A6 */	mtctr r12
/* 805D8348  4E 80 04 21 */	bctrl 
/* 805D834C  48 00 09 A0 */	b lbl_805D8CEC
lbl_805D8350:
/* 805D8350  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8354  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8358  C0 3F 05 80 */	lfs f1, 0x580(r31)
/* 805D835C  4B D5 00 D1 */	bl checkPass__12J3DFrameCtrlFf
/* 805D8360  2C 03 00 00 */	cmpwi r3, 0
/* 805D8364  41 82 09 88 */	beq lbl_805D8CEC
/* 805D8368  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D836C  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8370  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8374  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8378  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D837C  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8380  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CE@ha */
/* 805D8384  38 03 04 CE */	addi r0, r3, 0x04CE /* 0x000704CE@l */
/* 805D8388  90 01 00 70 */	stw r0, 0x70(r1)
/* 805D838C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8390  38 81 00 70 */	addi r4, r1, 0x70
/* 805D8394  38 A0 FF FF */	li r5, -1
/* 805D8398  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D839C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D83A0  7D 89 03 A6 */	mtctr r12
/* 805D83A4  4E 80 04 21 */	bctrl 
/* 805D83A8  48 00 09 44 */	b lbl_805D8CEC
lbl_805D83AC:
/* 805D83AC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D83B0  38 63 00 0C */	addi r3, r3, 0xc
/* 805D83B4  C0 3F 05 84 */	lfs f1, 0x584(r31)
/* 805D83B8  4B D5 00 75 */	bl checkPass__12J3DFrameCtrlFf
/* 805D83BC  2C 03 00 00 */	cmpwi r3, 0
/* 805D83C0  41 82 00 44 */	beq lbl_805D8404
/* 805D83C4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D83C8  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D83CC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D83D0  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D83D4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D83D8  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D83DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704BF@ha */
/* 805D83E0  38 03 04 BF */	addi r0, r3, 0x04BF /* 0x000704BF@l */
/* 805D83E4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 805D83E8  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D83EC  38 81 00 6C */	addi r4, r1, 0x6c
/* 805D83F0  38 A0 FF FF */	li r5, -1
/* 805D83F4  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D83F8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D83FC  7D 89 03 A6 */	mtctr r12
/* 805D8400  4E 80 04 21 */	bctrl 
lbl_805D8404:
/* 805D8404  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8408  38 63 00 0C */	addi r3, r3, 0xc
/* 805D840C  C0 3F 05 88 */	lfs f1, 0x588(r31)
/* 805D8410  4B D5 00 1D */	bl checkPass__12J3DFrameCtrlFf
/* 805D8414  2C 03 00 00 */	cmpwi r3, 0
/* 805D8418  41 82 00 44 */	beq lbl_805D845C
/* 805D841C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8420  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8424  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8428  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D842C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8430  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8434  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C0@ha */
/* 805D8438  38 03 04 C0 */	addi r0, r3, 0x04C0 /* 0x000704C0@l */
/* 805D843C  90 01 00 68 */	stw r0, 0x68(r1)
/* 805D8440  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8444  38 81 00 68 */	addi r4, r1, 0x68
/* 805D8448  38 A0 FF FF */	li r5, -1
/* 805D844C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8450  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D8454  7D 89 03 A6 */	mtctr r12
/* 805D8458  4E 80 04 21 */	bctrl 
lbl_805D845C:
/* 805D845C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8460  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8464  C0 3F 05 08 */	lfs f1, 0x508(r31)
/* 805D8468  4B D4 FF C5 */	bl checkPass__12J3DFrameCtrlFf
/* 805D846C  2C 03 00 00 */	cmpwi r3, 0
/* 805D8470  41 82 08 7C */	beq lbl_805D8CEC
/* 805D8474  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8478  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D847C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8480  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8484  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8488  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D848C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C1@ha */
/* 805D8490  38 03 04 C1 */	addi r0, r3, 0x04C1 /* 0x000704C1@l */
/* 805D8494  90 01 00 64 */	stw r0, 0x64(r1)
/* 805D8498  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D849C  38 81 00 64 */	addi r4, r1, 0x64
/* 805D84A0  38 A0 00 00 */	li r5, 0
/* 805D84A4  38 C0 FF FF */	li r6, -1
/* 805D84A8  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D84AC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D84B0  7D 89 03 A6 */	mtctr r12
/* 805D84B4  4E 80 04 21 */	bctrl 
/* 805D84B8  48 00 08 34 */	b lbl_805D8CEC
lbl_805D84BC:
/* 805D84BC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D84C0  38 63 00 0C */	addi r3, r3, 0xc
/* 805D84C4  C0 3F 05 8C */	lfs f1, 0x58c(r31)
/* 805D84C8  4B D4 FF 65 */	bl checkPass__12J3DFrameCtrlFf
/* 805D84CC  2C 03 00 00 */	cmpwi r3, 0
/* 805D84D0  41 82 08 1C */	beq lbl_805D8CEC
/* 805D84D4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D84D8  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D84DC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D84E0  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D84E4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D84E8  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D84EC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704BD@ha */
/* 805D84F0  38 03 04 BD */	addi r0, r3, 0x04BD /* 0x000704BD@l */
/* 805D84F4  90 01 00 60 */	stw r0, 0x60(r1)
/* 805D84F8  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D84FC  38 81 00 60 */	addi r4, r1, 0x60
/* 805D8500  38 A0 FF FF */	li r5, -1
/* 805D8504  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8508  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D850C  7D 89 03 A6 */	mtctr r12
/* 805D8510  4E 80 04 21 */	bctrl 
/* 805D8514  48 00 07 D8 */	b lbl_805D8CEC
lbl_805D8518:
/* 805D8518  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D851C  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8520  C0 3F 05 84 */	lfs f1, 0x584(r31)
/* 805D8524  4B D4 FF 09 */	bl checkPass__12J3DFrameCtrlFf
/* 805D8528  2C 03 00 00 */	cmpwi r3, 0
/* 805D852C  41 82 00 48 */	beq lbl_805D8574
/* 805D8530  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8534  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8538  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D853C  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8540  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8544  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8548  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C2@ha */
/* 805D854C  38 03 04 C2 */	addi r0, r3, 0x04C2 /* 0x000704C2@l */
/* 805D8550  90 01 00 5C */	stw r0, 0x5c(r1)
/* 805D8554  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8558  38 81 00 5C */	addi r4, r1, 0x5c
/* 805D855C  38 A0 00 00 */	li r5, 0
/* 805D8560  38 C0 FF FF */	li r6, -1
/* 805D8564  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8568  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D856C  7D 89 03 A6 */	mtctr r12
/* 805D8570  4E 80 04 21 */	bctrl 
lbl_805D8574:
/* 805D8574  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8578  38 63 00 0C */	addi r3, r3, 0xc
/* 805D857C  C0 3F 05 90 */	lfs f1, 0x590(r31)
/* 805D8580  4B D4 FE AD */	bl checkPass__12J3DFrameCtrlFf
/* 805D8584  2C 03 00 00 */	cmpwi r3, 0
/* 805D8588  41 82 00 48 */	beq lbl_805D85D0
/* 805D858C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8590  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8594  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8598  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D859C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D85A0  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D85A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C3@ha */
/* 805D85A8  38 03 04 C3 */	addi r0, r3, 0x04C3 /* 0x000704C3@l */
/* 805D85AC  90 01 00 58 */	stw r0, 0x58(r1)
/* 805D85B0  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D85B4  38 81 00 58 */	addi r4, r1, 0x58
/* 805D85B8  38 A0 00 00 */	li r5, 0
/* 805D85BC  38 C0 FF FF */	li r6, -1
/* 805D85C0  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D85C4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D85C8  7D 89 03 A6 */	mtctr r12
/* 805D85CC  4E 80 04 21 */	bctrl 
lbl_805D85D0:
/* 805D85D0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D85D4  38 63 00 0C */	addi r3, r3, 0xc
/* 805D85D8  C0 3F 05 94 */	lfs f1, 0x594(r31)
/* 805D85DC  4B D4 FE 51 */	bl checkPass__12J3DFrameCtrlFf
/* 805D85E0  2C 03 00 00 */	cmpwi r3, 0
/* 805D85E4  41 82 00 48 */	beq lbl_805D862C
/* 805D85E8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D85EC  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D85F0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D85F4  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D85F8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D85FC  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8600  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C2@ha */
/* 805D8604  38 03 04 C2 */	addi r0, r3, 0x04C2 /* 0x000704C2@l */
/* 805D8608  90 01 00 54 */	stw r0, 0x54(r1)
/* 805D860C  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8610  38 81 00 54 */	addi r4, r1, 0x54
/* 805D8614  38 A0 00 00 */	li r5, 0
/* 805D8618  38 C0 FF FF */	li r6, -1
/* 805D861C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8620  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D8624  7D 89 03 A6 */	mtctr r12
/* 805D8628  4E 80 04 21 */	bctrl 
lbl_805D862C:
/* 805D862C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8630  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8634  C0 3F 05 98 */	lfs f1, 0x598(r31)
/* 805D8638  4B D4 FD F5 */	bl checkPass__12J3DFrameCtrlFf
/* 805D863C  2C 03 00 00 */	cmpwi r3, 0
/* 805D8640  41 82 06 AC */	beq lbl_805D8CEC
/* 805D8644  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8648  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D864C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8650  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8654  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8658  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D865C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C3@ha */
/* 805D8660  38 03 04 C3 */	addi r0, r3, 0x04C3 /* 0x000704C3@l */
/* 805D8664  90 01 00 50 */	stw r0, 0x50(r1)
/* 805D8668  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D866C  38 81 00 50 */	addi r4, r1, 0x50
/* 805D8670  38 A0 00 00 */	li r5, 0
/* 805D8674  38 C0 FF FF */	li r6, -1
/* 805D8678  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D867C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D8680  7D 89 03 A6 */	mtctr r12
/* 805D8684  4E 80 04 21 */	bctrl 
/* 805D8688  48 00 06 64 */	b lbl_805D8CEC
lbl_805D868C:
/* 805D868C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8690  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8694  C0 3F 05 9C */	lfs f1, 0x59c(r31)
/* 805D8698  4B D4 FD 95 */	bl checkPass__12J3DFrameCtrlFf
/* 805D869C  2C 03 00 00 */	cmpwi r3, 0
/* 805D86A0  41 82 00 48 */	beq lbl_805D86E8
/* 805D86A4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D86A8  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D86AC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D86B0  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D86B4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D86B8  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D86BC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C2@ha */
/* 805D86C0  38 03 04 C2 */	addi r0, r3, 0x04C2 /* 0x000704C2@l */
/* 805D86C4  90 01 00 4C */	stw r0, 0x4c(r1)
/* 805D86C8  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D86CC  38 81 00 4C */	addi r4, r1, 0x4c
/* 805D86D0  38 A0 00 00 */	li r5, 0
/* 805D86D4  38 C0 FF FF */	li r6, -1
/* 805D86D8  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D86DC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D86E0  7D 89 03 A6 */	mtctr r12
/* 805D86E4  4E 80 04 21 */	bctrl 
lbl_805D86E8:
/* 805D86E8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D86EC  38 63 00 0C */	addi r3, r3, 0xc
/* 805D86F0  C0 3F 05 A0 */	lfs f1, 0x5a0(r31)
/* 805D86F4  4B D4 FD 39 */	bl checkPass__12J3DFrameCtrlFf
/* 805D86F8  2C 03 00 00 */	cmpwi r3, 0
/* 805D86FC  41 82 00 48 */	beq lbl_805D8744
/* 805D8700  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8704  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8708  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D870C  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8710  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8714  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8718  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C3@ha */
/* 805D871C  38 03 04 C3 */	addi r0, r3, 0x04C3 /* 0x000704C3@l */
/* 805D8720  90 01 00 48 */	stw r0, 0x48(r1)
/* 805D8724  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8728  38 81 00 48 */	addi r4, r1, 0x48
/* 805D872C  38 A0 00 00 */	li r5, 0
/* 805D8730  38 C0 FF FF */	li r6, -1
/* 805D8734  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8738  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D873C  7D 89 03 A6 */	mtctr r12
/* 805D8740  4E 80 04 21 */	bctrl 
lbl_805D8744:
/* 805D8744  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8748  38 63 00 0C */	addi r3, r3, 0xc
/* 805D874C  C0 3F 01 90 */	lfs f1, 0x190(r31)
/* 805D8750  4B D4 FC DD */	bl checkPass__12J3DFrameCtrlFf
/* 805D8754  2C 03 00 00 */	cmpwi r3, 0
/* 805D8758  41 82 00 44 */	beq lbl_805D879C
/* 805D875C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8760  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8764  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8768  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D876C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8770  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8774  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704BE@ha */
/* 805D8778  38 03 04 BE */	addi r0, r3, 0x04BE /* 0x000704BE@l */
/* 805D877C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805D8780  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8784  38 81 00 44 */	addi r4, r1, 0x44
/* 805D8788  38 A0 FF FF */	li r5, -1
/* 805D878C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8790  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D8794  7D 89 03 A6 */	mtctr r12
/* 805D8798  4E 80 04 21 */	bctrl 
lbl_805D879C:
/* 805D879C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D87A0  38 63 00 0C */	addi r3, r3, 0xc
/* 805D87A4  C0 3F 05 A4 */	lfs f1, 0x5a4(r31)
/* 805D87A8  4B D4 FC 85 */	bl checkPass__12J3DFrameCtrlFf
/* 805D87AC  2C 03 00 00 */	cmpwi r3, 0
/* 805D87B0  41 82 05 3C */	beq lbl_805D8CEC
/* 805D87B4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D87B8  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D87BC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D87C0  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D87C4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D87C8  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D87CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704BC@ha */
/* 805D87D0  38 03 04 BC */	addi r0, r3, 0x04BC /* 0x000704BC@l */
/* 805D87D4  90 01 00 40 */	stw r0, 0x40(r1)
/* 805D87D8  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D87DC  38 81 00 40 */	addi r4, r1, 0x40
/* 805D87E0  38 A0 00 00 */	li r5, 0
/* 805D87E4  38 C0 FF FF */	li r6, -1
/* 805D87E8  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D87EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D87F0  7D 89 03 A6 */	mtctr r12
/* 805D87F4  4E 80 04 21 */	bctrl 
/* 805D87F8  48 00 04 F4 */	b lbl_805D8CEC
lbl_805D87FC:
/* 805D87FC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8800  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8804  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8808  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D880C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8810  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8814  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C4@ha */
/* 805D8818  38 03 04 C4 */	addi r0, r3, 0x04C4 /* 0x000704C4@l */
/* 805D881C  90 01 00 3C */	stw r0, 0x3c(r1)
/* 805D8820  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8824  38 81 00 3C */	addi r4, r1, 0x3c
/* 805D8828  38 A0 00 00 */	li r5, 0
/* 805D882C  38 C0 FF FF */	li r6, -1
/* 805D8830  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8834  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D8838  7D 89 03 A6 */	mtctr r12
/* 805D883C  4E 80 04 21 */	bctrl 
/* 805D8840  48 00 04 AC */	b lbl_805D8CEC
lbl_805D8844:
/* 805D8844  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8848  38 63 00 0C */	addi r3, r3, 0xc
/* 805D884C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805D8850  4B D4 FB DD */	bl checkPass__12J3DFrameCtrlFf
/* 805D8854  2C 03 00 00 */	cmpwi r3, 0
/* 805D8858  41 82 00 44 */	beq lbl_805D889C
/* 805D885C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8860  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8864  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8868  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D886C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8870  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8874  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C6@ha */
/* 805D8878  38 03 04 C6 */	addi r0, r3, 0x04C6 /* 0x000704C6@l */
/* 805D887C  90 01 00 38 */	stw r0, 0x38(r1)
/* 805D8880  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8884  38 81 00 38 */	addi r4, r1, 0x38
/* 805D8888  38 A0 FF FF */	li r5, -1
/* 805D888C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8890  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D8894  7D 89 03 A6 */	mtctr r12
/* 805D8898  4E 80 04 21 */	bctrl 
lbl_805D889C:
/* 805D889C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D88A0  38 63 00 0C */	addi r3, r3, 0xc
/* 805D88A4  C0 3F 02 B4 */	lfs f1, 0x2b4(r31)
/* 805D88A8  4B D4 FB 85 */	bl checkPass__12J3DFrameCtrlFf
/* 805D88AC  2C 03 00 00 */	cmpwi r3, 0
/* 805D88B0  41 82 00 48 */	beq lbl_805D88F8
/* 805D88B4  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D88B8  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D88BC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D88C0  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D88C4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D88C8  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D88CC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C9@ha */
/* 805D88D0  38 03 04 C9 */	addi r0, r3, 0x04C9 /* 0x000704C9@l */
/* 805D88D4  90 01 00 34 */	stw r0, 0x34(r1)
/* 805D88D8  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D88DC  38 81 00 34 */	addi r4, r1, 0x34
/* 805D88E0  38 A0 00 00 */	li r5, 0
/* 805D88E4  38 C0 FF FF */	li r6, -1
/* 805D88E8  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D88EC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D88F0  7D 89 03 A6 */	mtctr r12
/* 805D88F4  4E 80 04 21 */	bctrl 
lbl_805D88F8:
/* 805D88F8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D88FC  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8900  C0 3F 05 78 */	lfs f1, 0x578(r31)
/* 805D8904  4B D4 FB 29 */	bl checkPass__12J3DFrameCtrlFf
/* 805D8908  2C 03 00 00 */	cmpwi r3, 0
/* 805D890C  41 82 00 48 */	beq lbl_805D8954
/* 805D8910  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8914  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8918  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D891C  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8920  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8924  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8928  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CC@ha */
/* 805D892C  38 03 04 CC */	addi r0, r3, 0x04CC /* 0x000704CC@l */
/* 805D8930  90 01 00 30 */	stw r0, 0x30(r1)
/* 805D8934  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8938  38 81 00 30 */	addi r4, r1, 0x30
/* 805D893C  38 A0 00 00 */	li r5, 0
/* 805D8940  38 C0 FF FF */	li r6, -1
/* 805D8944  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8948  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D894C  7D 89 03 A6 */	mtctr r12
/* 805D8950  4E 80 04 21 */	bctrl 
lbl_805D8954:
/* 805D8954  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8958  38 63 00 0C */	addi r3, r3, 0xc
/* 805D895C  C0 3F 05 90 */	lfs f1, 0x590(r31)
/* 805D8960  4B D4 FA CD */	bl checkPass__12J3DFrameCtrlFf
/* 805D8964  2C 03 00 00 */	cmpwi r3, 0
/* 805D8968  41 82 03 84 */	beq lbl_805D8CEC
/* 805D896C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8970  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8974  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8978  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D897C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8980  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8984  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CC@ha */
/* 805D8988  38 03 04 CC */	addi r0, r3, 0x04CC /* 0x000704CC@l */
/* 805D898C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805D8990  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8994  38 81 00 2C */	addi r4, r1, 0x2c
/* 805D8998  38 A0 00 00 */	li r5, 0
/* 805D899C  38 C0 FF FF */	li r6, -1
/* 805D89A0  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D89A4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D89A8  7D 89 03 A6 */	mtctr r12
/* 805D89AC  4E 80 04 21 */	bctrl 
/* 805D89B0  48 00 03 3C */	b lbl_805D8CEC
lbl_805D89B4:
/* 805D89B4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D89B8  38 63 00 0C */	addi r3, r3, 0xc
/* 805D89BC  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805D89C0  4B D4 FA 6D */	bl checkPass__12J3DFrameCtrlFf
/* 805D89C4  2C 03 00 00 */	cmpwi r3, 0
/* 805D89C8  41 82 00 44 */	beq lbl_805D8A0C
/* 805D89CC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D89D0  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D89D4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D89D8  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D89DC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D89E0  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D89E4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C7@ha */
/* 805D89E8  38 03 04 C7 */	addi r0, r3, 0x04C7 /* 0x000704C7@l */
/* 805D89EC  90 01 00 28 */	stw r0, 0x28(r1)
/* 805D89F0  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D89F4  38 81 00 28 */	addi r4, r1, 0x28
/* 805D89F8  38 A0 FF FF */	li r5, -1
/* 805D89FC  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8A00  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D8A04  7D 89 03 A6 */	mtctr r12
/* 805D8A08  4E 80 04 21 */	bctrl 
lbl_805D8A0C:
/* 805D8A0C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8A10  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8A14  C0 3F 05 A8 */	lfs f1, 0x5a8(r31)
/* 805D8A18  4B D4 FA 15 */	bl checkPass__12J3DFrameCtrlFf
/* 805D8A1C  2C 03 00 00 */	cmpwi r3, 0
/* 805D8A20  41 82 00 48 */	beq lbl_805D8A68
/* 805D8A24  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8A28  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8A2C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8A30  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8A34  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8A38  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8A3C  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CA@ha */
/* 805D8A40  38 03 04 CA */	addi r0, r3, 0x04CA /* 0x000704CA@l */
/* 805D8A44  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D8A48  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8A4C  38 81 00 24 */	addi r4, r1, 0x24
/* 805D8A50  38 A0 00 00 */	li r5, 0
/* 805D8A54  38 C0 FF FF */	li r6, -1
/* 805D8A58  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8A5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D8A60  7D 89 03 A6 */	mtctr r12
/* 805D8A64  4E 80 04 21 */	bctrl 
lbl_805D8A68:
/* 805D8A68  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8A6C  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8A70  C0 3F 05 AC */	lfs f1, 0x5ac(r31)
/* 805D8A74  4B D4 F9 B9 */	bl checkPass__12J3DFrameCtrlFf
/* 805D8A78  2C 03 00 00 */	cmpwi r3, 0
/* 805D8A7C  41 82 00 48 */	beq lbl_805D8AC4
/* 805D8A80  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8A84  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8A88  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8A8C  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8A90  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8A94  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8A98  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CC@ha */
/* 805D8A9C  38 03 04 CC */	addi r0, r3, 0x04CC /* 0x000704CC@l */
/* 805D8AA0  90 01 00 20 */	stw r0, 0x20(r1)
/* 805D8AA4  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8AA8  38 81 00 20 */	addi r4, r1, 0x20
/* 805D8AAC  38 A0 00 00 */	li r5, 0
/* 805D8AB0  38 C0 FF FF */	li r6, -1
/* 805D8AB4  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8AB8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D8ABC  7D 89 03 A6 */	mtctr r12
/* 805D8AC0  4E 80 04 21 */	bctrl 
lbl_805D8AC4:
/* 805D8AC4  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8AC8  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8ACC  C0 3F 01 A0 */	lfs f1, 0x1a0(r31)
/* 805D8AD0  4B D4 F9 5D */	bl checkPass__12J3DFrameCtrlFf
/* 805D8AD4  2C 03 00 00 */	cmpwi r3, 0
/* 805D8AD8  41 82 02 14 */	beq lbl_805D8CEC
/* 805D8ADC  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8AE0  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8AE4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8AE8  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8AEC  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8AF0  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8AF4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CC@ha */
/* 805D8AF8  38 03 04 CC */	addi r0, r3, 0x04CC /* 0x000704CC@l */
/* 805D8AFC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805D8B00  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8B04  38 81 00 1C */	addi r4, r1, 0x1c
/* 805D8B08  38 A0 00 00 */	li r5, 0
/* 805D8B0C  38 C0 FF FF */	li r6, -1
/* 805D8B10  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8B14  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D8B18  7D 89 03 A6 */	mtctr r12
/* 805D8B1C  4E 80 04 21 */	bctrl 
/* 805D8B20  48 00 01 CC */	b lbl_805D8CEC
lbl_805D8B24:
/* 805D8B24  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8B28  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8B2C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 805D8B30  4B D4 F8 FD */	bl checkPass__12J3DFrameCtrlFf
/* 805D8B34  2C 03 00 00 */	cmpwi r3, 0
/* 805D8B38  41 82 00 44 */	beq lbl_805D8B7C
/* 805D8B3C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8B40  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8B44  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8B48  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8B4C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8B50  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8B54  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704C8@ha */
/* 805D8B58  38 03 04 C8 */	addi r0, r3, 0x04C8 /* 0x000704C8@l */
/* 805D8B5C  90 01 00 18 */	stw r0, 0x18(r1)
/* 805D8B60  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8B64  38 81 00 18 */	addi r4, r1, 0x18
/* 805D8B68  38 A0 FF FF */	li r5, -1
/* 805D8B6C  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8B70  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 805D8B74  7D 89 03 A6 */	mtctr r12
/* 805D8B78  4E 80 04 21 */	bctrl 
lbl_805D8B7C:
/* 805D8B7C  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8B80  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8B84  C0 3F 05 B0 */	lfs f1, 0x5b0(r31)
/* 805D8B88  4B D4 F8 A5 */	bl checkPass__12J3DFrameCtrlFf
/* 805D8B8C  2C 03 00 00 */	cmpwi r3, 0
/* 805D8B90  41 82 00 48 */	beq lbl_805D8BD8
/* 805D8B94  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8B98  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8B9C  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8BA0  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8BA4  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8BA8  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8BAC  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CB@ha */
/* 805D8BB0  38 03 04 CB */	addi r0, r3, 0x04CB /* 0x000704CB@l */
/* 805D8BB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805D8BB8  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8BBC  38 81 00 14 */	addi r4, r1, 0x14
/* 805D8BC0  38 A0 00 00 */	li r5, 0
/* 805D8BC4  38 C0 FF FF */	li r6, -1
/* 805D8BC8  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8BCC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D8BD0  7D 89 03 A6 */	mtctr r12
/* 805D8BD4  4E 80 04 21 */	bctrl 
lbl_805D8BD8:
/* 805D8BD8  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8BDC  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8BE0  C0 3F 05 B4 */	lfs f1, 0x5b4(r31)
/* 805D8BE4  4B D4 F8 49 */	bl checkPass__12J3DFrameCtrlFf
/* 805D8BE8  2C 03 00 00 */	cmpwi r3, 0
/* 805D8BEC  41 82 00 48 */	beq lbl_805D8C34
/* 805D8BF0  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8BF4  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8BF8  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8BFC  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8C00  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8C04  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8C08  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CC@ha */
/* 805D8C0C  38 03 04 CC */	addi r0, r3, 0x04CC /* 0x000704CC@l */
/* 805D8C10  90 01 00 10 */	stw r0, 0x10(r1)
/* 805D8C14  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8C18  38 81 00 10 */	addi r4, r1, 0x10
/* 805D8C1C  38 A0 00 00 */	li r5, 0
/* 805D8C20  38 C0 FF FF */	li r6, -1
/* 805D8C24  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8C28  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D8C2C  7D 89 03 A6 */	mtctr r12
/* 805D8C30  4E 80 04 21 */	bctrl 
lbl_805D8C34:
/* 805D8C34  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8C38  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8C3C  C0 3F 05 B8 */	lfs f1, 0x5b8(r31)
/* 805D8C40  4B D4 F7 ED */	bl checkPass__12J3DFrameCtrlFf
/* 805D8C44  2C 03 00 00 */	cmpwi r3, 0
/* 805D8C48  41 82 00 48 */	beq lbl_805D8C90
/* 805D8C4C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8C50  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8C54  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8C58  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8C5C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8C60  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8C64  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CD@ha */
/* 805D8C68  38 03 04 CD */	addi r0, r3, 0x04CD /* 0x000704CD@l */
/* 805D8C6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805D8C70  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8C74  38 81 00 0C */	addi r4, r1, 0xc
/* 805D8C78  38 A0 00 00 */	li r5, 0
/* 805D8C7C  38 C0 FF FF */	li r6, -1
/* 805D8C80  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8C84  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D8C88  7D 89 03 A6 */	mtctr r12
/* 805D8C8C  4E 80 04 21 */	bctrl 
lbl_805D8C90:
/* 805D8C90  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 805D8C94  38 63 00 0C */	addi r3, r3, 0xc
/* 805D8C98  C0 3F 05 70 */	lfs f1, 0x570(r31)
/* 805D8C9C  4B D4 F7 91 */	bl checkPass__12J3DFrameCtrlFf
/* 805D8CA0  2C 03 00 00 */	cmpwi r3, 0
/* 805D8CA4  41 82 00 48 */	beq lbl_805D8CEC
/* 805D8CA8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 805D8CAC  D0 1E 06 C4 */	stfs f0, 0x6c4(r30)
/* 805D8CB0  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D8CB4  D0 1E 06 C8 */	stfs f0, 0x6c8(r30)
/* 805D8CB8  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 805D8CBC  D0 1E 06 CC */	stfs f0, 0x6cc(r30)
/* 805D8CC0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704CC@ha */
/* 805D8CC4  38 03 04 CC */	addi r0, r3, 0x04CC /* 0x000704CC@l */
/* 805D8CC8  90 01 00 08 */	stw r0, 8(r1)
/* 805D8CCC  38 7E 05 DC */	addi r3, r30, 0x5dc
/* 805D8CD0  38 81 00 08 */	addi r4, r1, 8
/* 805D8CD4  38 A0 00 00 */	li r5, 0
/* 805D8CD8  38 C0 FF FF */	li r6, -1
/* 805D8CDC  81 9E 05 DC */	lwz r12, 0x5dc(r30)
/* 805D8CE0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 805D8CE4  7D 89 03 A6 */	mtctr r12
/* 805D8CE8  4E 80 04 21 */	bctrl 
lbl_805D8CEC:
/* 805D8CEC  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 805D8CF0  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 805D8CF4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805D8CF8  7C 08 03 A6 */	mtlr r0
/* 805D8CFC  38 21 00 90 */	addi r1, r1, 0x90
/* 805D8D00  4E 80 00 20 */	blr 
