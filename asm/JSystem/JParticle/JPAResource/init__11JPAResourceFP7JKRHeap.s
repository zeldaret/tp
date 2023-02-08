lbl_80274080:
/* 80274080  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80274084  7C 08 02 A6 */	mflr r0
/* 80274088  90 01 00 64 */	stw r0, 0x64(r1)
/* 8027408C  39 61 00 60 */	addi r11, r1, 0x60
/* 80274090  48 0E E1 11 */	bl __save_gpr
/* 80274094  7C 6F 1B 78 */	mr r15, r3
/* 80274098  7C 90 23 78 */	mr r16, r4
/* 8027409C  80 63 00 1C */	lwz r3, 0x1c(r3)
/* 802740A0  80 63 00 00 */	lwz r3, 0(r3)
/* 802740A4  80 03 00 08 */	lwz r0, 8(r3)
/* 802740A8  54 1F 04 E6 */	rlwinm r31, r0, 0, 0x13, 0x13
/* 802740AC  54 1E 04 62 */	rlwinm r30, r0, 0, 0x11, 0x11
/* 802740B0  88 83 00 21 */	lbz r4, 0x21(r3)
/* 802740B4  54 9D 07 BC */	rlwinm r29, r4, 0, 0x1e, 0x1e
/* 802740B8  54 9C 07 38 */	rlwinm r28, r4, 0, 0x1c, 0x1c
/* 802740BC  88 63 00 1E */	lbz r3, 0x1e(r3)
/* 802740C0  54 7B 07 FE */	clrlwi r27, r3, 0x1f
/* 802740C4  54 03 01 CE */	rlwinm r3, r0, 0, 7, 7
/* 802740C8  90 61 00 14 */	stw r3, 0x14(r1)
/* 802740CC  54 03 02 D6 */	rlwinm r3, r0, 0, 0xb, 0xb
/* 802740D0  90 61 00 10 */	stw r3, 0x10(r1)
/* 802740D4  38 A0 00 00 */	li r5, 0
/* 802740D8  80 6F 00 20 */	lwz r3, 0x20(r15)
/* 802740DC  28 03 00 00 */	cmplwi r3, 0
/* 802740E0  41 82 00 18 */	beq lbl_802740F8
/* 802740E4  80 83 00 00 */	lwz r4, 0(r3)
/* 802740E8  80 84 00 08 */	lwz r4, 8(r4)
/* 802740EC  54 84 07 FF */	clrlwi. r4, r4, 0x1f
/* 802740F0  41 82 00 08 */	beq lbl_802740F8
/* 802740F4  38 A0 00 01 */	li r5, 1
lbl_802740F8:
/* 802740F8  54 BA 06 3E */	clrlwi r26, r5, 0x18
/* 802740FC  38 A0 00 00 */	li r5, 0
/* 80274100  28 03 00 00 */	cmplwi r3, 0
/* 80274104  41 82 00 18 */	beq lbl_8027411C
/* 80274108  80 83 00 00 */	lwz r4, 0(r3)
/* 8027410C  80 84 00 08 */	lwz r4, 8(r4)
/* 80274110  54 84 03 DF */	rlwinm. r4, r4, 0, 0xf, 0xf
/* 80274114  41 82 00 08 */	beq lbl_8027411C
/* 80274118  38 A0 00 01 */	li r5, 1
lbl_8027411C:
/* 8027411C  54 B9 06 3E */	clrlwi r25, r5, 0x18
/* 80274120  38 A0 00 00 */	li r5, 0
/* 80274124  7C A6 2B 78 */	mr r6, r5
/* 80274128  28 03 00 00 */	cmplwi r3, 0
/* 8027412C  41 82 00 18 */	beq lbl_80274144
/* 80274130  80 83 00 00 */	lwz r4, 0(r3)
/* 80274134  80 84 00 08 */	lwz r4, 8(r4)
/* 80274138  54 84 03 DF */	rlwinm. r4, r4, 0, 0xf, 0xf
/* 8027413C  41 82 00 08 */	beq lbl_80274144
/* 80274140  38 C0 00 01 */	li r6, 1
lbl_80274144:
/* 80274144  54 C4 06 3F */	clrlwi. r4, r6, 0x18
/* 80274148  41 82 00 18 */	beq lbl_80274160
/* 8027414C  80 83 00 00 */	lwz r4, 0(r3)
/* 80274150  80 84 00 08 */	lwz r4, 8(r4)
/* 80274154  54 84 03 9D */	rlwinm. r4, r4, 0, 0xe, 0xe
/* 80274158  41 82 00 08 */	beq lbl_80274160
/* 8027415C  38 A0 00 01 */	li r5, 1
lbl_80274160:
/* 80274160  54 AE 06 3E */	clrlwi r14, r5, 0x18
/* 80274164  38 80 00 00 */	li r4, 0
/* 80274168  28 03 00 00 */	cmplwi r3, 0
/* 8027416C  41 82 00 18 */	beq lbl_80274184
/* 80274170  80 63 00 00 */	lwz r3, 0(r3)
/* 80274174  80 63 00 08 */	lwz r3, 8(r3)
/* 80274178  54 63 01 CF */	rlwinm. r3, r3, 0, 7, 7
/* 8027417C  41 82 00 08 */	beq lbl_80274184
/* 80274180  38 80 00 01 */	li r4, 1
lbl_80274184:
/* 80274184  54 98 06 3F */	clrlwi. r24, r4, 0x18
/* 80274188  38 80 00 01 */	li r4, 1
/* 8027418C  40 82 00 34 */	bne lbl_802741C0
/* 80274190  38 A0 00 00 */	li r5, 0
/* 80274194  80 6F 00 24 */	lwz r3, 0x24(r15)
/* 80274198  28 03 00 00 */	cmplwi r3, 0
/* 8027419C  41 82 00 18 */	beq lbl_802741B4
/* 802741A0  80 63 00 00 */	lwz r3, 0(r3)
/* 802741A4  80 63 00 08 */	lwz r3, 8(r3)
/* 802741A8  54 63 01 CF */	rlwinm. r3, r3, 0, 7, 7
/* 802741AC  41 82 00 08 */	beq lbl_802741B4
/* 802741B0  7C 85 23 78 */	mr r5, r4
lbl_802741B4:
/* 802741B4  54 A3 06 3F */	clrlwi. r3, r5, 0x18
/* 802741B8  40 82 00 08 */	bne lbl_802741C0
/* 802741BC  38 80 00 00 */	li r4, 0
lbl_802741C0:
/* 802741C0  54 97 06 3E */	clrlwi r23, r4, 0x18
/* 802741C4  38 60 00 01 */	li r3, 1
/* 802741C8  54 04 07 3E */	clrlwi r4, r0, 0x1c
/* 802741CC  28 04 00 05 */	cmplwi r4, 5
/* 802741D0  41 82 00 10 */	beq lbl_802741E0
/* 802741D4  28 04 00 06 */	cmplwi r4, 6
/* 802741D8  41 82 00 08 */	beq lbl_802741E0
/* 802741DC  38 60 00 00 */	li r3, 0
lbl_802741E0:
/* 802741E0  54 76 06 3E */	clrlwi r22, r3, 0x18
/* 802741E4  7C 83 00 34 */	cntlzw r3, r4
/* 802741E8  54 63 DE 3E */	rlwinm r3, r3, 0x1b, 0x18, 0x1f
/* 802741EC  90 61 00 0C */	stw r3, 0xc(r1)
/* 802741F0  38 60 00 00 */	li r3, 0
/* 802741F4  28 04 00 00 */	cmplwi r4, 0
/* 802741F8  41 82 00 0C */	beq lbl_80274204
/* 802741FC  28 04 00 01 */	cmplwi r4, 1
/* 80274200  40 82 00 08 */	bne lbl_80274208
lbl_80274204:
/* 80274204  38 60 00 01 */	li r3, 1
lbl_80274208:
/* 80274208  54 75 06 3E */	clrlwi r21, r3, 0x18
/* 8027420C  38 A0 00 00 */	li r5, 0
/* 80274210  80 6F 00 24 */	lwz r3, 0x24(r15)
/* 80274214  28 03 00 00 */	cmplwi r3, 0
/* 80274218  41 82 00 34 */	beq lbl_8027424C
/* 8027421C  38 C0 00 01 */	li r6, 1
/* 80274220  80 83 00 00 */	lwz r4, 0(r3)
/* 80274224  80 84 00 08 */	lwz r4, 8(r4)
/* 80274228  54 84 07 3E */	clrlwi r4, r4, 0x1c
/* 8027422C  28 04 00 05 */	cmplwi r4, 5
/* 80274230  41 82 00 10 */	beq lbl_80274240
/* 80274234  28 04 00 06 */	cmplwi r4, 6
/* 80274238  41 82 00 08 */	beq lbl_80274240
/* 8027423C  7C A6 2B 78 */	mr r6, r5
lbl_80274240:
/* 80274240  54 C4 06 3F */	clrlwi. r4, r6, 0x18
/* 80274244  41 82 00 08 */	beq lbl_8027424C
/* 80274248  38 A0 00 01 */	li r5, 1
lbl_8027424C:
/* 8027424C  54 B4 06 3E */	clrlwi r20, r5, 0x18
/* 80274250  38 A0 00 00 */	li r5, 0
/* 80274254  28 03 00 00 */	cmplwi r3, 0
/* 80274258  41 82 00 18 */	beq lbl_80274270
/* 8027425C  80 83 00 00 */	lwz r4, 0(r3)
/* 80274260  80 84 00 08 */	lwz r4, 8(r4)
/* 80274264  54 84 07 3F */	clrlwi. r4, r4, 0x1c
/* 80274268  40 82 00 08 */	bne lbl_80274270
/* 8027426C  38 A0 00 01 */	li r5, 1
lbl_80274270:
/* 80274270  54 A4 06 3E */	clrlwi r4, r5, 0x18
/* 80274274  90 81 00 08 */	stw r4, 8(r1)
/* 80274278  38 80 00 00 */	li r4, 0
/* 8027427C  28 03 00 00 */	cmplwi r3, 0
/* 80274280  41 82 00 30 */	beq lbl_802742B0
/* 80274284  38 A0 00 01 */	li r5, 1
/* 80274288  80 63 00 00 */	lwz r3, 0(r3)
/* 8027428C  80 63 00 08 */	lwz r3, 8(r3)
/* 80274290  54 63 07 3F */	clrlwi. r3, r3, 0x1c
/* 80274294  41 82 00 10 */	beq lbl_802742A4
/* 80274298  28 03 00 01 */	cmplwi r3, 1
/* 8027429C  41 82 00 08 */	beq lbl_802742A4
/* 802742A0  7C 85 23 78 */	mr r5, r4
lbl_802742A4:
/* 802742A4  54 A3 06 3F */	clrlwi. r3, r5, 0x18
/* 802742A8  41 82 00 08 */	beq lbl_802742B0
/* 802742AC  38 80 00 01 */	li r4, 1
lbl_802742B0:
/* 802742B0  54 93 06 3E */	clrlwi r19, r4, 0x18
/* 802742B4  54 03 2F FE */	rlwinm r3, r0, 5, 0x1f, 0x1f
/* 802742B8  7C 63 00 34 */	cntlzw r3, r3
/* 802742BC  54 72 DE 3E */	rlwinm r18, r3, 0x1b, 0x18, 0x1f
/* 802742C0  54 00 27 FE */	rlwinm r0, r0, 4, 0x1f, 0x1f
/* 802742C4  7C 00 00 34 */	cntlzw r0, r0
/* 802742C8  54 11 DE 3E */	rlwinm r17, r0, 0x1b, 0x18, 0x1f
/* 802742CC  2C 1E 00 00 */	cmpwi r30, 0
/* 802742D0  41 82 00 18 */	beq lbl_802742E8
/* 802742D4  2C 1B 00 00 */	cmpwi r27, 0
/* 802742D8  41 82 00 10 */	beq lbl_802742E8
/* 802742DC  88 6F 00 41 */	lbz r3, 0x41(r15)
/* 802742E0  38 03 00 01 */	addi r0, r3, 1
/* 802742E4  98 0F 00 41 */	stb r0, 0x41(r15)
lbl_802742E8:
/* 802742E8  2C 1F 00 00 */	cmpwi r31, 0
/* 802742EC  41 82 00 48 */	beq lbl_80274334
/* 802742F0  2C 1D 00 00 */	cmpwi r29, 0
/* 802742F4  41 82 00 10 */	beq lbl_80274304
/* 802742F8  88 6F 00 41 */	lbz r3, 0x41(r15)
/* 802742FC  38 03 00 01 */	addi r0, r3, 1
/* 80274300  98 0F 00 41 */	stb r0, 0x41(r15)
lbl_80274304:
/* 80274304  2C 1C 00 00 */	cmpwi r28, 0
/* 80274308  41 82 00 10 */	beq lbl_80274318
/* 8027430C  88 6F 00 41 */	lbz r3, 0x41(r15)
/* 80274310  38 03 00 01 */	addi r0, r3, 1
/* 80274314  98 0F 00 41 */	stb r0, 0x41(r15)
lbl_80274318:
/* 80274318  2C 1D 00 00 */	cmpwi r29, 0
/* 8027431C  40 82 00 0C */	bne lbl_80274328
/* 80274320  2C 1C 00 00 */	cmpwi r28, 0
/* 80274324  41 82 00 10 */	beq lbl_80274334
lbl_80274328:
/* 80274328  88 6F 00 41 */	lbz r3, 0x41(r15)
/* 8027432C  38 03 00 01 */	addi r0, r3, 1
/* 80274330  98 0F 00 41 */	stb r0, 0x41(r15)
lbl_80274334:
/* 80274334  88 0F 00 41 */	lbz r0, 0x41(r15)
/* 80274338  28 00 00 00 */	cmplwi r0, 0
/* 8027433C  41 82 00 18 */	beq lbl_80274354
/* 80274340  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 80274344  38 80 00 04 */	li r4, 4
/* 80274348  7E 05 83 78 */	mr r5, r16
/* 8027434C  48 05 A1 29 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80274350  90 6F 00 00 */	stw r3, 0(r15)
lbl_80274354:
/* 80274354  38 60 00 00 */	li r3, 0
/* 80274358  2C 1E 00 00 */	cmpwi r30, 0
/* 8027435C  41 82 00 AC */	beq lbl_80274408
/* 80274360  2C 1B 00 00 */	cmpwi r27, 0
/* 80274364  41 82 00 A4 */	beq lbl_80274408
/* 80274368  80 6F 00 1C */	lwz r3, 0x1c(r15)
/* 8027436C  80 63 00 00 */	lwz r3, 0(r3)
/* 80274370  88 03 00 1E */	lbz r0, 0x1e(r3)
/* 80274374  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 80274378  2C 00 00 02 */	cmpwi r0, 2
/* 8027437C  41 82 00 50 */	beq lbl_802743CC
/* 80274380  40 80 00 14 */	bge lbl_80274394
/* 80274384  2C 00 00 00 */	cmpwi r0, 0
/* 80274388  41 82 00 1C */	beq lbl_802743A4
/* 8027438C  40 80 00 2C */	bge lbl_802743B8
/* 80274390  48 00 00 74 */	b lbl_80274404
lbl_80274394:
/* 80274394  2C 00 00 04 */	cmpwi r0, 4
/* 80274398  41 82 00 5C */	beq lbl_802743F4
/* 8027439C  40 80 00 68 */	bge lbl_80274404
/* 802743A0  48 00 00 40 */	b lbl_802743E0
lbl_802743A4:
/* 802743A4  3C 60 80 27 */	lis r3, JPACalcTexIdxNormal__FP18JPAEmitterWorkData@ha /* 0x802779DC@ha */
/* 802743A8  38 03 79 DC */	addi r0, r3, JPACalcTexIdxNormal__FP18JPAEmitterWorkData@l /* 0x802779DC@l */
/* 802743AC  80 6F 00 00 */	lwz r3, 0(r15)
/* 802743B0  90 03 00 00 */	stw r0, 0(r3)
/* 802743B4  48 00 00 50 */	b lbl_80274404
lbl_802743B8:
/* 802743B8  3C 60 80 27 */	lis r3, JPACalcTexIdxRepeat__FP18JPAEmitterWorkData@ha /* 0x80277A50@ha */
/* 802743BC  38 03 7A 50 */	addi r0, r3, JPACalcTexIdxRepeat__FP18JPAEmitterWorkData@l /* 0x80277A50@l */
/* 802743C0  80 6F 00 00 */	lwz r3, 0(r15)
/* 802743C4  90 03 00 00 */	stw r0, 0(r3)
/* 802743C8  48 00 00 3C */	b lbl_80274404
lbl_802743CC:
/* 802743CC  3C 60 80 27 */	lis r3, JPACalcTexIdxReverse__FP18JPAEmitterWorkData@ha /* 0x80277ACC@ha */
/* 802743D0  38 03 7A CC */	addi r0, r3, JPACalcTexIdxReverse__FP18JPAEmitterWorkData@l /* 0x80277ACC@l */
/* 802743D4  80 6F 00 00 */	lwz r3, 0(r15)
/* 802743D8  90 03 00 00 */	stw r0, 0(r3)
/* 802743DC  48 00 00 28 */	b lbl_80274404
lbl_802743E0:
/* 802743E0  3C 60 80 27 */	lis r3, JPACalcTexIdxMerge__FP18JPAEmitterWorkData@ha /* 0x80277B78@ha */
/* 802743E4  38 03 7B 78 */	addi r0, r3, JPACalcTexIdxMerge__FP18JPAEmitterWorkData@l /* 0x80277B78@l */
/* 802743E8  80 6F 00 00 */	lwz r3, 0(r15)
/* 802743EC  90 03 00 00 */	stw r0, 0(r3)
/* 802743F0  48 00 00 14 */	b lbl_80274404
lbl_802743F4:
/* 802743F4  3C 60 80 27 */	lis r3, JPACalcTexIdxRandom__FP18JPAEmitterWorkData@ha /* 0x80277C0C@ha */
/* 802743F8  38 03 7C 0C */	addi r0, r3, JPACalcTexIdxRandom__FP18JPAEmitterWorkData@l /* 0x80277C0C@l */
/* 802743FC  80 6F 00 00 */	lwz r3, 0(r15)
/* 80274400  90 03 00 00 */	stw r0, 0(r3)
lbl_80274404:
/* 80274404  38 60 00 01 */	li r3, 1
lbl_80274408:
/* 80274408  2C 1F 00 00 */	cmpwi r31, 0
/* 8027440C  41 82 01 04 */	beq lbl_80274510
/* 80274410  2C 1D 00 00 */	cmpwi r29, 0
/* 80274414  41 82 00 1C */	beq lbl_80274430
/* 80274418  3C 80 80 27 */	lis r4, JPACalcPrm__FP18JPAEmitterWorkData@ha /* 0x802773C4@ha */
/* 8027441C  38 A4 73 C4 */	addi r5, r4, JPACalcPrm__FP18JPAEmitterWorkData@l /* 0x802773C4@l */
/* 80274420  80 8F 00 00 */	lwz r4, 0(r15)
/* 80274424  54 60 10 3A */	slwi r0, r3, 2
/* 80274428  7C A4 01 2E */	stwx r5, r4, r0
/* 8027442C  38 63 00 01 */	addi r3, r3, 1
lbl_80274430:
/* 80274430  2C 1C 00 00 */	cmpwi r28, 0
/* 80274434  41 82 00 1C */	beq lbl_80274450
/* 80274438  3C 80 80 27 */	lis r4, JPACalcEnv__FP18JPAEmitterWorkData@ha /* 0x80277440@ha */
/* 8027443C  38 A4 74 40 */	addi r5, r4, JPACalcEnv__FP18JPAEmitterWorkData@l /* 0x80277440@l */
/* 80274440  80 8F 00 00 */	lwz r4, 0(r15)
/* 80274444  54 60 10 3A */	slwi r0, r3, 2
/* 80274448  7C A4 01 2E */	stwx r5, r4, r0
/* 8027444C  38 63 00 01 */	addi r3, r3, 1
lbl_80274450:
/* 80274450  2C 1D 00 00 */	cmpwi r29, 0
/* 80274454  40 82 00 0C */	bne lbl_80274460
/* 80274458  2C 1C 00 00 */	cmpwi r28, 0
/* 8027445C  41 82 00 B4 */	beq lbl_80274510
lbl_80274460:
/* 80274460  80 8F 00 1C */	lwz r4, 0x1c(r15)
/* 80274464  80 84 00 00 */	lwz r4, 0(r4)
/* 80274468  88 04 00 21 */	lbz r0, 0x21(r4)
/* 8027446C  54 00 E7 7E */	rlwinm r0, r0, 0x1c, 0x1d, 0x1f
/* 80274470  2C 00 00 02 */	cmpwi r0, 2
/* 80274474  41 82 00 58 */	beq lbl_802744CC
/* 80274478  40 80 00 14 */	bge lbl_8027448C
/* 8027447C  2C 00 00 00 */	cmpwi r0, 0
/* 80274480  41 82 00 1C */	beq lbl_8027449C
/* 80274484  40 80 00 30 */	bge lbl_802744B4
/* 80274488  48 00 00 88 */	b lbl_80274510
lbl_8027448C:
/* 8027448C  2C 00 00 04 */	cmpwi r0, 4
/* 80274490  41 82 00 6C */	beq lbl_802744FC
/* 80274494  40 80 00 7C */	bge lbl_80274510
/* 80274498  48 00 00 4C */	b lbl_802744E4
lbl_8027449C:
/* 8027449C  3C 80 80 27 */	lis r4, JPACalcClrIdxNormal__FP18JPAEmitterWorkData@ha /* 0x802771BC@ha */
/* 802744A0  38 A4 71 BC */	addi r5, r4, JPACalcClrIdxNormal__FP18JPAEmitterWorkData@l /* 0x802771BC@l */
/* 802744A4  80 8F 00 00 */	lwz r4, 0(r15)
/* 802744A8  54 60 10 3A */	slwi r0, r3, 2
/* 802744AC  7C A4 01 2E */	stwx r5, r4, r0
/* 802744B0  48 00 00 60 */	b lbl_80274510
lbl_802744B4:
/* 802744B4  3C 80 80 27 */	lis r4, JPACalcClrIdxRepeat__FP18JPAEmitterWorkData@ha /* 0x80277210@ha */
/* 802744B8  38 A4 72 10 */	addi r5, r4, JPACalcClrIdxRepeat__FP18JPAEmitterWorkData@l /* 0x80277210@l */
/* 802744BC  80 8F 00 00 */	lwz r4, 0(r15)
/* 802744C0  54 60 10 3A */	slwi r0, r3, 2
/* 802744C4  7C A4 01 2E */	stwx r5, r4, r0
/* 802744C8  48 00 00 48 */	b lbl_80274510
lbl_802744CC:
/* 802744CC  3C 80 80 27 */	lis r4, JPACalcClrIdxReverse__FP18JPAEmitterWorkData@ha /* 0x8027727C@ha */
/* 802744D0  38 A4 72 7C */	addi r5, r4, JPACalcClrIdxReverse__FP18JPAEmitterWorkData@l /* 0x8027727C@l */
/* 802744D4  80 8F 00 00 */	lwz r4, 0(r15)
/* 802744D8  54 60 10 3A */	slwi r0, r3, 2
/* 802744DC  7C A4 01 2E */	stwx r5, r4, r0
/* 802744E0  48 00 00 30 */	b lbl_80274510
lbl_802744E4:
/* 802744E4  3C 80 80 27 */	lis r4, JPACalcClrIdxMerge__FP18JPAEmitterWorkData@ha /* 0x80277308@ha */
/* 802744E8  38 A4 73 08 */	addi r5, r4, JPACalcClrIdxMerge__FP18JPAEmitterWorkData@l /* 0x80277308@l */
/* 802744EC  80 8F 00 00 */	lwz r4, 0(r15)
/* 802744F0  54 60 10 3A */	slwi r0, r3, 2
/* 802744F4  7C A4 01 2E */	stwx r5, r4, r0
/* 802744F8  48 00 00 18 */	b lbl_80274510
lbl_802744FC:
/* 802744FC  3C 80 80 27 */	lis r4, JPACalcClrIdxRandom__FP18JPAEmitterWorkData@ha /* 0x80277384@ha */
/* 80274500  38 A4 73 84 */	addi r5, r4, JPACalcClrIdxRandom__FP18JPAEmitterWorkData@l /* 0x80277384@l */
/* 80274504  80 8F 00 00 */	lwz r4, 0(r15)
/* 80274508  54 60 10 3A */	slwi r0, r3, 2
/* 8027450C  7C A4 01 2E */	stwx r5, r4, r0
lbl_80274510:
/* 80274510  2C 1E 00 00 */	cmpwi r30, 0
/* 80274514  40 82 00 18 */	bne lbl_8027452C
/* 80274518  2C 1B 00 00 */	cmpwi r27, 0
/* 8027451C  41 82 00 10 */	beq lbl_8027452C
/* 80274520  88 6F 00 44 */	lbz r3, 0x44(r15)
/* 80274524  38 03 00 01 */	addi r0, r3, 1
/* 80274528  98 0F 00 44 */	stb r0, 0x44(r15)
lbl_8027452C:
/* 8027452C  2C 16 00 00 */	cmpwi r22, 0
/* 80274530  40 82 00 20 */	bne lbl_80274550
/* 80274534  2C 19 00 00 */	cmpwi r25, 0
/* 80274538  40 82 00 0C */	bne lbl_80274544
/* 8027453C  2C 0E 00 00 */	cmpwi r14, 0
/* 80274540  41 82 00 10 */	beq lbl_80274550
lbl_80274544:
/* 80274544  88 6F 00 44 */	lbz r3, 0x44(r15)
/* 80274548  38 03 00 01 */	addi r0, r3, 1
/* 8027454C  98 0F 00 44 */	stb r0, 0x44(r15)
lbl_80274550:
/* 80274550  2C 1F 00 00 */	cmpwi r31, 0
/* 80274554  40 82 00 4C */	bne lbl_802745A0
/* 80274558  2C 1D 00 00 */	cmpwi r29, 0
/* 8027455C  41 82 00 10 */	beq lbl_8027456C
/* 80274560  88 6F 00 44 */	lbz r3, 0x44(r15)
/* 80274564  38 03 00 01 */	addi r0, r3, 1
/* 80274568  98 0F 00 44 */	stb r0, 0x44(r15)
lbl_8027456C:
/* 8027456C  2C 1C 00 00 */	cmpwi r28, 0
/* 80274570  41 82 00 10 */	beq lbl_80274580
/* 80274574  88 6F 00 44 */	lbz r3, 0x44(r15)
/* 80274578  38 03 00 01 */	addi r0, r3, 1
/* 8027457C  98 0F 00 44 */	stb r0, 0x44(r15)
lbl_80274580:
/* 80274580  2C 1D 00 00 */	cmpwi r29, 0
/* 80274584  40 82 00 0C */	bne lbl_80274590
/* 80274588  2C 1C 00 00 */	cmpwi r28, 0
/* 8027458C  41 82 00 20 */	beq lbl_802745AC
lbl_80274590:
/* 80274590  88 6F 00 44 */	lbz r3, 0x44(r15)
/* 80274594  38 03 00 01 */	addi r0, r3, 1
/* 80274598  98 0F 00 44 */	stb r0, 0x44(r15)
/* 8027459C  48 00 00 10 */	b lbl_802745AC
lbl_802745A0:
/* 802745A0  88 6F 00 44 */	lbz r3, 0x44(r15)
/* 802745A4  38 03 00 01 */	addi r0, r3, 1
/* 802745A8  98 0F 00 44 */	stb r0, 0x44(r15)
lbl_802745AC:
/* 802745AC  2C 1A 00 00 */	cmpwi r26, 0
/* 802745B0  41 82 00 8C */	beq lbl_8027463C
/* 802745B4  80 6F 00 1C */	lwz r3, 0x1c(r15)
/* 802745B8  80 63 00 00 */	lwz r3, 0(r3)
/* 802745BC  80 03 00 08 */	lwz r0, 8(r3)
/* 802745C0  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 802745C4  41 82 00 60 */	beq lbl_80274624
/* 802745C8  80 6F 00 20 */	lwz r3, 0x20(r15)
/* 802745CC  80 63 00 00 */	lwz r3, 0(r3)
/* 802745D0  80 63 00 08 */	lwz r3, 8(r3)
/* 802745D4  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 802745D8  41 82 00 40 */	beq lbl_80274618
/* 802745DC  54 60 C7 BF */	rlwinm. r0, r3, 0x18, 0x1e, 0x1f
/* 802745E0  40 82 00 1C */	bne lbl_802745FC
/* 802745E4  54 60 B7 BF */	rlwinm. r0, r3, 0x16, 0x1e, 0x1f
/* 802745E8  40 82 00 14 */	bne lbl_802745FC
/* 802745EC  88 6F 00 44 */	lbz r3, 0x44(r15)
/* 802745F0  38 03 00 01 */	addi r0, r3, 1
/* 802745F4  98 0F 00 44 */	stb r0, 0x44(r15)
/* 802745F8  48 00 00 2C */	b lbl_80274624
lbl_802745FC:
/* 802745FC  88 6F 00 44 */	lbz r3, 0x44(r15)
/* 80274600  38 03 00 01 */	addi r0, r3, 1
/* 80274604  98 0F 00 44 */	stb r0, 0x44(r15)
/* 80274608  88 6F 00 44 */	lbz r3, 0x44(r15)
/* 8027460C  38 03 00 01 */	addi r0, r3, 1
/* 80274610  98 0F 00 44 */	stb r0, 0x44(r15)
/* 80274614  48 00 00 10 */	b lbl_80274624
lbl_80274618:
/* 80274618  88 6F 00 44 */	lbz r3, 0x44(r15)
/* 8027461C  38 03 00 01 */	addi r0, r3, 1
/* 80274620  98 0F 00 44 */	stb r0, 0x44(r15)
lbl_80274624:
/* 80274624  88 6F 00 44 */	lbz r3, 0x44(r15)
/* 80274628  38 03 00 01 */	addi r0, r3, 1
/* 8027462C  98 0F 00 44 */	stb r0, 0x44(r15)
/* 80274630  88 6F 00 44 */	lbz r3, 0x44(r15)
/* 80274634  38 03 00 01 */	addi r0, r3, 1
/* 80274638  98 0F 00 44 */	stb r0, 0x44(r15)
lbl_8027463C:
/* 8027463C  88 0F 00 44 */	lbz r0, 0x44(r15)
/* 80274640  28 00 00 00 */	cmplwi r0, 0
/* 80274644  41 82 00 18 */	beq lbl_8027465C
/* 80274648  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 8027464C  38 80 00 04 */	li r4, 4
/* 80274650  7E 05 83 78 */	mr r5, r16
/* 80274654  48 05 9E 21 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80274658  90 6F 00 0C */	stw r3, 0xc(r15)
lbl_8027465C:
/* 8027465C  38 60 00 00 */	li r3, 0
/* 80274660  2C 1E 00 00 */	cmpwi r30, 0
/* 80274664  40 82 00 AC */	bne lbl_80274710
/* 80274668  2C 1B 00 00 */	cmpwi r27, 0
/* 8027466C  41 82 00 A4 */	beq lbl_80274710
/* 80274670  80 6F 00 1C */	lwz r3, 0x1c(r15)
/* 80274674  80 63 00 00 */	lwz r3, 0(r3)
/* 80274678  88 03 00 1E */	lbz r0, 0x1e(r3)
/* 8027467C  54 00 F7 7E */	rlwinm r0, r0, 0x1e, 0x1d, 0x1f
/* 80274680  2C 00 00 02 */	cmpwi r0, 2
/* 80274684  41 82 00 50 */	beq lbl_802746D4
/* 80274688  40 80 00 14 */	bge lbl_8027469C
/* 8027468C  2C 00 00 00 */	cmpwi r0, 0
/* 80274690  41 82 00 1C */	beq lbl_802746AC
/* 80274694  40 80 00 2C */	bge lbl_802746C0
/* 80274698  48 00 00 74 */	b lbl_8027470C
lbl_8027469C:
/* 8027469C  2C 00 00 04 */	cmpwi r0, 4
/* 802746A0  41 82 00 5C */	beq lbl_802746FC
/* 802746A4  40 80 00 68 */	bge lbl_8027470C
/* 802746A8  48 00 00 40 */	b lbl_802746E8
lbl_802746AC:
/* 802746AC  3C 60 80 27 */	lis r3, JPACalcTexIdxNormal__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277A18@ha */
/* 802746B0  38 03 7A 18 */	addi r0, r3, JPACalcTexIdxNormal__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277A18@l */
/* 802746B4  80 6F 00 0C */	lwz r3, 0xc(r15)
/* 802746B8  90 03 00 00 */	stw r0, 0(r3)
/* 802746BC  48 00 00 50 */	b lbl_8027470C
lbl_802746C0:
/* 802746C0  3C 60 80 27 */	lis r3, JPACalcTexIdxRepeat__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277A88@ha */
/* 802746C4  38 03 7A 88 */	addi r0, r3, JPACalcTexIdxRepeat__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277A88@l */
/* 802746C8  80 6F 00 0C */	lwz r3, 0xc(r15)
/* 802746CC  90 03 00 00 */	stw r0, 0(r3)
/* 802746D0  48 00 00 3C */	b lbl_8027470C
lbl_802746D4:
/* 802746D4  3C 60 80 27 */	lis r3, JPACalcTexIdxReverse__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277B1C@ha */
/* 802746D8  38 03 7B 1C */	addi r0, r3, JPACalcTexIdxReverse__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277B1C@l */
/* 802746DC  80 6F 00 0C */	lwz r3, 0xc(r15)
/* 802746E0  90 03 00 00 */	stw r0, 0(r3)
/* 802746E4  48 00 00 28 */	b lbl_8027470C
lbl_802746E8:
/* 802746E8  3C 60 80 27 */	lis r3, JPACalcTexIdxMerge__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277B94@ha */
/* 802746EC  38 03 7B 94 */	addi r0, r3, JPACalcTexIdxMerge__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277B94@l */
/* 802746F0  80 6F 00 0C */	lwz r3, 0xc(r15)
/* 802746F4  90 03 00 00 */	stw r0, 0(r3)
/* 802746F8  48 00 00 14 */	b lbl_8027470C
lbl_802746FC:
/* 802746FC  3C 60 80 27 */	lis r3, JPACalcTexIdxRandom__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277C28@ha */
/* 80274700  38 03 7C 28 */	addi r0, r3, JPACalcTexIdxRandom__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277C28@l */
/* 80274704  80 6F 00 0C */	lwz r3, 0xc(r15)
/* 80274708  90 03 00 00 */	stw r0, 0(r3)
lbl_8027470C:
/* 8027470C  38 60 00 01 */	li r3, 1
lbl_80274710:
/* 80274710  2C 16 00 00 */	cmpwi r22, 0
/* 80274714  40 82 00 50 */	bne lbl_80274764
/* 80274718  2C 19 00 00 */	cmpwi r25, 0
/* 8027471C  40 82 00 0C */	bne lbl_80274728
/* 80274720  2C 0E 00 00 */	cmpwi r14, 0
/* 80274724  41 82 00 40 */	beq lbl_80274764
lbl_80274728:
/* 80274728  2C 0E 00 00 */	cmpwi r14, 0
/* 8027472C  41 82 00 20 */	beq lbl_8027474C
/* 80274730  3C 80 80 28 */	lis r4, JPACalcAlphaFlickAnm__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027AC98@ha */
/* 80274734  38 A4 AC 98 */	addi r5, r4, JPACalcAlphaFlickAnm__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027AC98@l */
/* 80274738  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 8027473C  54 60 10 3A */	slwi r0, r3, 2
/* 80274740  7C A4 01 2E */	stwx r5, r4, r0
/* 80274744  38 63 00 01 */	addi r3, r3, 1
/* 80274748  48 00 00 1C */	b lbl_80274764
lbl_8027474C:
/* 8027474C  3C 80 80 28 */	lis r4, JPACalcAlphaAnm__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027AC10@ha */
/* 80274750  38 A4 AC 10 */	addi r5, r4, JPACalcAlphaAnm__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027AC10@l */
/* 80274754  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 80274758  54 60 10 3A */	slwi r0, r3, 2
/* 8027475C  7C A4 01 2E */	stwx r5, r4, r0
/* 80274760  38 63 00 01 */	addi r3, r3, 1
lbl_80274764:
/* 80274764  2C 1F 00 00 */	cmpwi r31, 0
/* 80274768  40 82 01 0C */	bne lbl_80274874
/* 8027476C  2C 1D 00 00 */	cmpwi r29, 0
/* 80274770  41 82 00 1C */	beq lbl_8027478C
/* 80274774  3C 80 80 27 */	lis r4, JPACalcPrm__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277404@ha */
/* 80274778  38 A4 74 04 */	addi r5, r4, JPACalcPrm__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277404@l */
/* 8027477C  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 80274780  54 60 10 3A */	slwi r0, r3, 2
/* 80274784  7C A4 01 2E */	stwx r5, r4, r0
/* 80274788  38 63 00 01 */	addi r3, r3, 1
lbl_8027478C:
/* 8027478C  2C 1C 00 00 */	cmpwi r28, 0
/* 80274790  41 82 00 1C */	beq lbl_802747AC
/* 80274794  3C 80 80 27 */	lis r4, JPACalcEnv__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277480@ha */
/* 80274798  38 A4 74 80 */	addi r5, r4, JPACalcEnv__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277480@l */
/* 8027479C  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 802747A0  54 60 10 3A */	slwi r0, r3, 2
/* 802747A4  7C A4 01 2E */	stwx r5, r4, r0
/* 802747A8  38 63 00 01 */	addi r3, r3, 1
lbl_802747AC:
/* 802747AC  2C 1D 00 00 */	cmpwi r29, 0
/* 802747B0  40 82 00 0C */	bne lbl_802747BC
/* 802747B4  2C 1C 00 00 */	cmpwi r28, 0
/* 802747B8  41 82 00 D4 */	beq lbl_8027488C
lbl_802747BC:
/* 802747BC  80 8F 00 1C */	lwz r4, 0x1c(r15)
/* 802747C0  80 84 00 00 */	lwz r4, 0(r4)
/* 802747C4  88 04 00 21 */	lbz r0, 0x21(r4)
/* 802747C8  54 00 E7 7E */	rlwinm r0, r0, 0x1c, 0x1d, 0x1f
/* 802747CC  2C 00 00 02 */	cmpwi r0, 2
/* 802747D0  41 82 00 58 */	beq lbl_80274828
/* 802747D4  40 80 00 14 */	bge lbl_802747E8
/* 802747D8  2C 00 00 00 */	cmpwi r0, 0
/* 802747DC  41 82 00 1C */	beq lbl_802747F8
/* 802747E0  40 80 00 30 */	bge lbl_80274810
/* 802747E4  48 00 00 88 */	b lbl_8027486C
lbl_802747E8:
/* 802747E8  2C 00 00 04 */	cmpwi r0, 4
/* 802747EC  41 82 00 6C */	beq lbl_80274858
/* 802747F0  40 80 00 7C */	bge lbl_8027486C
/* 802747F4  48 00 00 4C */	b lbl_80274840
lbl_802747F8:
/* 802747F8  3C 80 80 27 */	lis r4, JPACalcClrIdxNormal__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x802771E8@ha */
/* 802747FC  38 A4 71 E8 */	addi r5, r4, JPACalcClrIdxNormal__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x802771E8@l */
/* 80274800  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 80274804  54 60 10 3A */	slwi r0, r3, 2
/* 80274808  7C A4 01 2E */	stwx r5, r4, r0
/* 8027480C  48 00 00 60 */	b lbl_8027486C
lbl_80274810:
/* 80274810  3C 80 80 27 */	lis r4, JPACalcClrIdxRepeat__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277240@ha */
/* 80274814  38 A4 72 40 */	addi r5, r4, JPACalcClrIdxRepeat__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277240@l */
/* 80274818  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 8027481C  54 60 10 3A */	slwi r0, r3, 2
/* 80274820  7C A4 01 2E */	stwx r5, r4, r0
/* 80274824  48 00 00 48 */	b lbl_8027486C
lbl_80274828:
/* 80274828  3C 80 80 27 */	lis r4, JPACalcClrIdxReverse__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x802772BC@ha */
/* 8027482C  38 A4 72 BC */	addi r5, r4, JPACalcClrIdxReverse__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x802772BC@l */
/* 80274830  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 80274834  54 60 10 3A */	slwi r0, r3, 2
/* 80274838  7C A4 01 2E */	stwx r5, r4, r0
/* 8027483C  48 00 00 30 */	b lbl_8027486C
lbl_80274840:
/* 80274840  3C 80 80 27 */	lis r4, JPACalcClrIdxMerge__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277314@ha */
/* 80274844  38 A4 73 14 */	addi r5, r4, JPACalcClrIdxMerge__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277314@l */
/* 80274848  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 8027484C  54 60 10 3A */	slwi r0, r3, 2
/* 80274850  7C A4 01 2E */	stwx r5, r4, r0
/* 80274854  48 00 00 18 */	b lbl_8027486C
lbl_80274858:
/* 80274858  3C 80 80 27 */	lis r4, JPACalcClrIdxRandom__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277390@ha */
/* 8027485C  38 A4 73 90 */	addi r5, r4, JPACalcClrIdxRandom__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277390@l */
/* 80274860  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 80274864  54 60 10 3A */	slwi r0, r3, 2
/* 80274868  7C A4 01 2E */	stwx r5, r4, r0
lbl_8027486C:
/* 8027486C  38 63 00 01 */	addi r3, r3, 1
/* 80274870  48 00 00 1C */	b lbl_8027488C
lbl_80274874:
/* 80274874  3C 80 80 27 */	lis r4, JPACalcColorCopy__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x802774BC@ha */
/* 80274878  38 A4 74 BC */	addi r5, r4, JPACalcColorCopy__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x802774BC@l */
/* 8027487C  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 80274880  54 60 10 3A */	slwi r0, r3, 2
/* 80274884  7C A4 01 2E */	stwx r5, r4, r0
/* 80274888  38 63 00 01 */	addi r3, r3, 1
lbl_8027488C:
/* 8027488C  2C 1A 00 00 */	cmpwi r26, 0
/* 80274890  41 82 01 80 */	beq lbl_80274A10
/* 80274894  80 8F 00 1C */	lwz r4, 0x1c(r15)
/* 80274898  80 84 00 00 */	lwz r4, 0(r4)
/* 8027489C  80 04 00 08 */	lwz r0, 8(r4)
/* 802748A0  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 802748A4  41 82 00 D4 */	beq lbl_80274978
/* 802748A8  80 8F 00 20 */	lwz r4, 0x20(r15)
/* 802748AC  80 84 00 00 */	lwz r4, 0(r4)
/* 802748B0  80 04 00 08 */	lwz r0, 8(r4)
/* 802748B4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 802748B8  41 82 00 A8 */	beq lbl_80274960
/* 802748BC  3C 80 80 28 */	lis r4, JPACalcScaleY__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027A990@ha */
/* 802748C0  38 A4 A9 90 */	addi r5, r4, JPACalcScaleY__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027A990@l */
/* 802748C4  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 802748C8  54 60 10 3A */	slwi r0, r3, 2
/* 802748CC  7C A4 01 2E */	stwx r5, r4, r0
/* 802748D0  80 8F 00 20 */	lwz r4, 0x20(r15)
/* 802748D4  80 84 00 00 */	lwz r4, 0(r4)
/* 802748D8  80 04 00 08 */	lwz r0, 8(r4)
/* 802748DC  54 04 B7 BF */	rlwinm. r4, r0, 0x16, 0x1e, 0x1f
/* 802748E0  38 63 00 01 */	addi r3, r3, 1
/* 802748E4  40 82 00 0C */	bne lbl_802748F0
/* 802748E8  54 00 C7 BF */	rlwinm. r0, r0, 0x18, 0x1e, 0x1f
/* 802748EC  41 82 00 8C */	beq lbl_80274978
lbl_802748F0:
/* 802748F0  2C 04 00 01 */	cmpwi r4, 1
/* 802748F4  41 82 00 38 */	beq lbl_8027492C
/* 802748F8  40 80 00 10 */	bge lbl_80274908
/* 802748FC  2C 04 00 00 */	cmpwi r4, 0
/* 80274900  40 80 00 14 */	bge lbl_80274914
/* 80274904  48 00 00 54 */	b lbl_80274958
lbl_80274908:
/* 80274908  2C 04 00 03 */	cmpwi r4, 3
/* 8027490C  40 80 00 4C */	bge lbl_80274958
/* 80274910  48 00 00 34 */	b lbl_80274944
lbl_80274914:
/* 80274914  3C 80 80 28 */	lis r4, JPACalcScaleAnmNormal__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027AA14@ha */
/* 80274918  38 A4 AA 14 */	addi r5, r4, JPACalcScaleAnmNormal__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027AA14@l */
/* 8027491C  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 80274920  54 60 10 3A */	slwi r0, r3, 2
/* 80274924  7C A4 01 2E */	stwx r5, r4, r0
/* 80274928  48 00 00 30 */	b lbl_80274958
lbl_8027492C:
/* 8027492C  3C 80 80 28 */	lis r4, JPACalcScaleAnmRepeatY__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027AA84@ha */
/* 80274930  38 A4 AA 84 */	addi r5, r4, JPACalcScaleAnmRepeatY__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027AA84@l */
/* 80274934  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 80274938  54 60 10 3A */	slwi r0, r3, 2
/* 8027493C  7C A4 01 2E */	stwx r5, r4, r0
/* 80274940  48 00 00 18 */	b lbl_80274958
lbl_80274944:
/* 80274944  3C 80 80 28 */	lis r4, JPACalcScaleAnmReverseY__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027AB7C@ha */
/* 80274948  38 A4 AB 7C */	addi r5, r4, JPACalcScaleAnmReverseY__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027AB7C@l */
/* 8027494C  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 80274950  54 60 10 3A */	slwi r0, r3, 2
/* 80274954  7C A4 01 2E */	stwx r5, r4, r0
lbl_80274958:
/* 80274958  38 63 00 01 */	addi r3, r3, 1
/* 8027495C  48 00 00 1C */	b lbl_80274978
lbl_80274960:
/* 80274960  3C 80 80 28 */	lis r4, JPACalcScaleCopy__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027AA08@ha */
/* 80274964  38 A4 AA 08 */	addi r5, r4, JPACalcScaleCopy__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027AA08@l */
/* 80274968  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 8027496C  54 60 10 3A */	slwi r0, r3, 2
/* 80274970  7C A4 01 2E */	stwx r5, r4, r0
/* 80274974  38 63 00 01 */	addi r3, r3, 1
lbl_80274978:
/* 80274978  3C 80 80 28 */	lis r4, JPACalcScaleX__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027A918@ha */
/* 8027497C  38 A4 A9 18 */	addi r5, r4, JPACalcScaleX__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027A918@l */
/* 80274980  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 80274984  54 60 10 3A */	slwi r0, r3, 2
/* 80274988  7C A4 01 2E */	stwx r5, r4, r0
/* 8027498C  80 8F 00 20 */	lwz r4, 0x20(r15)
/* 80274990  80 84 00 00 */	lwz r4, 0(r4)
/* 80274994  80 04 00 08 */	lwz r0, 8(r4)
/* 80274998  54 00 C7 BE */	rlwinm r0, r0, 0x18, 0x1e, 0x1f
/* 8027499C  2C 00 00 01 */	cmpwi r0, 1
/* 802749A0  41 82 00 3C */	beq lbl_802749DC
/* 802749A4  40 80 00 10 */	bge lbl_802749B4
/* 802749A8  2C 00 00 00 */	cmpwi r0, 0
/* 802749AC  40 80 00 14 */	bge lbl_802749C0
/* 802749B0  48 00 00 60 */	b lbl_80274A10
lbl_802749B4:
/* 802749B4  2C 00 00 03 */	cmpwi r0, 3
/* 802749B8  40 80 00 58 */	bge lbl_80274A10
/* 802749BC  48 00 00 3C */	b lbl_802749F8
lbl_802749C0:
/* 802749C0  3C 80 80 28 */	lis r4, JPACalcScaleAnmNormal__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027AA14@ha */
/* 802749C4  38 A4 AA 14 */	addi r5, r4, JPACalcScaleAnmNormal__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027AA14@l */
/* 802749C8  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 802749CC  38 03 00 01 */	addi r0, r3, 1
/* 802749D0  54 00 10 3A */	slwi r0, r0, 2
/* 802749D4  7C A4 01 2E */	stwx r5, r4, r0
/* 802749D8  48 00 00 38 */	b lbl_80274A10
lbl_802749DC:
/* 802749DC  3C 80 80 28 */	lis r4, JPACalcScaleAnmRepeatX__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027AA20@ha */
/* 802749E0  38 A4 AA 20 */	addi r5, r4, JPACalcScaleAnmRepeatX__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027AA20@l */
/* 802749E4  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 802749E8  38 03 00 01 */	addi r0, r3, 1
/* 802749EC  54 00 10 3A */	slwi r0, r0, 2
/* 802749F0  7C A4 01 2E */	stwx r5, r4, r0
/* 802749F4  48 00 00 1C */	b lbl_80274A10
lbl_802749F8:
/* 802749F8  3C 80 80 28 */	lis r4, JPACalcScaleAnmReverseX__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027AAE8@ha */
/* 802749FC  38 A4 AA E8 */	addi r5, r4, JPACalcScaleAnmReverseX__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027AAE8@l */
/* 80274A00  80 8F 00 0C */	lwz r4, 0xc(r15)
/* 80274A04  38 03 00 01 */	addi r0, r3, 1
/* 80274A08  54 00 10 3A */	slwi r0, r0, 2
/* 80274A0C  7C A4 01 2E */	stwx r5, r4, r0
lbl_80274A10:
/* 80274A10  80 6F 00 24 */	lwz r3, 0x24(r15)
/* 80274A14  28 03 00 00 */	cmplwi r3, 0
/* 80274A18  41 82 00 20 */	beq lbl_80274A38
/* 80274A1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80274A20  80 03 00 08 */	lwz r0, 8(r3)
/* 80274A24  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 80274A28  41 82 00 10 */	beq lbl_80274A38
/* 80274A2C  88 6F 00 46 */	lbz r3, 0x46(r15)
/* 80274A30  38 03 00 01 */	addi r0, r3, 1
/* 80274A34  98 0F 00 46 */	stb r0, 0x46(r15)
lbl_80274A38:
/* 80274A38  80 6F 00 24 */	lwz r3, 0x24(r15)
/* 80274A3C  28 03 00 00 */	cmplwi r3, 0
/* 80274A40  41 82 00 20 */	beq lbl_80274A60
/* 80274A44  80 63 00 00 */	lwz r3, 0(r3)
/* 80274A48  80 03 00 08 */	lwz r0, 8(r3)
/* 80274A4C  54 00 02 11 */	rlwinm. r0, r0, 0, 8, 8
/* 80274A50  41 82 00 10 */	beq lbl_80274A60
/* 80274A54  88 6F 00 46 */	lbz r3, 0x46(r15)
/* 80274A58  38 03 00 01 */	addi r0, r3, 1
/* 80274A5C  98 0F 00 46 */	stb r0, 0x46(r15)
lbl_80274A60:
/* 80274A60  88 0F 00 46 */	lbz r0, 0x46(r15)
/* 80274A64  28 00 00 00 */	cmplwi r0, 0
/* 80274A68  41 82 00 18 */	beq lbl_80274A80
/* 80274A6C  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 80274A70  38 80 00 04 */	li r4, 4
/* 80274A74  7E 05 83 78 */	mr r5, r16
/* 80274A78  48 05 99 FD */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80274A7C  90 6F 00 14 */	stw r3, 0x14(r15)
lbl_80274A80:
/* 80274A80  38 00 00 00 */	li r0, 0
/* 80274A84  80 6F 00 24 */	lwz r3, 0x24(r15)
/* 80274A88  28 03 00 00 */	cmplwi r3, 0
/* 80274A8C  41 82 00 28 */	beq lbl_80274AB4
/* 80274A90  80 63 00 00 */	lwz r3, 0(r3)
/* 80274A94  80 63 00 08 */	lwz r3, 8(r3)
/* 80274A98  54 63 02 53 */	rlwinm. r3, r3, 0, 9, 9
/* 80274A9C  41 82 00 18 */	beq lbl_80274AB4
/* 80274AA0  3C 60 80 28 */	lis r3, JPACalcChildScaleOut__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027B008@ha */
/* 80274AA4  38 03 B0 08 */	addi r0, r3, JPACalcChildScaleOut__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027B008@l */
/* 80274AA8  80 6F 00 14 */	lwz r3, 0x14(r15)
/* 80274AAC  90 03 00 00 */	stw r0, 0(r3)
/* 80274AB0  38 00 00 01 */	li r0, 1
lbl_80274AB4:
/* 80274AB4  80 6F 00 24 */	lwz r3, 0x24(r15)
/* 80274AB8  28 03 00 00 */	cmplwi r3, 0
/* 80274ABC  41 82 00 28 */	beq lbl_80274AE4
/* 80274AC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80274AC4  80 63 00 08 */	lwz r3, 8(r3)
/* 80274AC8  54 63 02 11 */	rlwinm. r3, r3, 0, 8, 8
/* 80274ACC  41 82 00 18 */	beq lbl_80274AE4
/* 80274AD0  3C 60 80 28 */	lis r3, JPACalcChildAlphaOut__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027AFDC@ha */
/* 80274AD4  38 83 AF DC */	addi r4, r3, JPACalcChildAlphaOut__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027AFDC@l */
/* 80274AD8  80 6F 00 14 */	lwz r3, 0x14(r15)
/* 80274ADC  54 00 10 3A */	slwi r0, r0, 2
/* 80274AE0  7C 83 01 2E */	stwx r4, r3, r0
lbl_80274AE4:
/* 80274AE4  2C 12 00 00 */	cmpwi r18, 0
/* 80274AE8  41 82 00 18 */	beq lbl_80274B00
/* 80274AEC  2C 16 00 00 */	cmpwi r22, 0
/* 80274AF0  41 82 00 10 */	beq lbl_80274B00
/* 80274AF4  88 6F 00 42 */	lbz r3, 0x42(r15)
/* 80274AF8  38 03 00 01 */	addi r0, r3, 1
/* 80274AFC  98 0F 00 42 */	stb r0, 0x42(r15)
lbl_80274B00:
/* 80274B00  88 6F 00 42 */	lbz r3, 0x42(r15)
/* 80274B04  38 03 00 01 */	addi r0, r3, 1
/* 80274B08  98 0F 00 42 */	stb r0, 0x42(r15)
/* 80274B0C  80 0F 00 28 */	lwz r0, 0x28(r15)
/* 80274B10  28 00 00 00 */	cmplwi r0, 0
/* 80274B14  41 82 00 10 */	beq lbl_80274B24
/* 80274B18  88 6F 00 42 */	lbz r3, 0x42(r15)
/* 80274B1C  38 03 00 01 */	addi r0, r3, 1
/* 80274B20  98 0F 00 42 */	stb r0, 0x42(r15)
lbl_80274B24:
/* 80274B24  2C 1E 00 00 */	cmpwi r30, 0
/* 80274B28  40 82 00 0C */	bne lbl_80274B34
/* 80274B2C  2C 1B 00 00 */	cmpwi r27, 0
/* 80274B30  40 82 00 10 */	bne lbl_80274B40
lbl_80274B34:
/* 80274B34  88 6F 00 42 */	lbz r3, 0x42(r15)
/* 80274B38  38 03 00 01 */	addi r0, r3, 1
/* 80274B3C  98 0F 00 42 */	stb r0, 0x42(r15)
lbl_80274B40:
/* 80274B40  88 6F 00 42 */	lbz r3, 0x42(r15)
/* 80274B44  38 03 00 01 */	addi r0, r3, 1
/* 80274B48  98 0F 00 42 */	stb r0, 0x42(r15)
/* 80274B4C  2C 15 00 00 */	cmpwi r21, 0
/* 80274B50  41 82 00 10 */	beq lbl_80274B60
/* 80274B54  88 6F 00 42 */	lbz r3, 0x42(r15)
/* 80274B58  38 03 00 01 */	addi r0, r3, 1
/* 80274B5C  98 0F 00 42 */	stb r0, 0x42(r15)
lbl_80274B60:
/* 80274B60  2C 15 00 00 */	cmpwi r21, 0
/* 80274B64  41 82 00 18 */	beq lbl_80274B7C
/* 80274B68  2C 1A 00 00 */	cmpwi r26, 0
/* 80274B6C  40 82 00 10 */	bne lbl_80274B7C
/* 80274B70  88 6F 00 42 */	lbz r3, 0x42(r15)
/* 80274B74  38 03 00 01 */	addi r0, r3, 1
/* 80274B78  98 0F 00 42 */	stb r0, 0x42(r15)
lbl_80274B7C:
/* 80274B7C  2C 1F 00 00 */	cmpwi r31, 0
/* 80274B80  40 82 00 1C */	bne lbl_80274B9C
/* 80274B84  2C 1D 00 00 */	cmpwi r29, 0
/* 80274B88  40 82 00 0C */	bne lbl_80274B94
/* 80274B8C  2C 19 00 00 */	cmpwi r25, 0
/* 80274B90  41 82 00 0C */	beq lbl_80274B9C
lbl_80274B94:
/* 80274B94  2C 1C 00 00 */	cmpwi r28, 0
/* 80274B98  40 82 00 10 */	bne lbl_80274BA8
lbl_80274B9C:
/* 80274B9C  88 6F 00 42 */	lbz r3, 0x42(r15)
/* 80274BA0  38 03 00 01 */	addi r0, r3, 1
/* 80274BA4  98 0F 00 42 */	stb r0, 0x42(r15)
lbl_80274BA8:
/* 80274BA8  88 0F 00 42 */	lbz r0, 0x42(r15)
/* 80274BAC  28 00 00 00 */	cmplwi r0, 0
/* 80274BB0  41 82 00 18 */	beq lbl_80274BC8
/* 80274BB4  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 80274BB8  38 80 00 04 */	li r4, 4
/* 80274BBC  7E 05 83 78 */	mr r5, r16
/* 80274BC0  48 05 98 B5 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80274BC4  90 6F 00 04 */	stw r3, 4(r15)
lbl_80274BC8:
/* 80274BC8  38 60 00 00 */	li r3, 0
/* 80274BCC  2C 12 00 00 */	cmpwi r18, 0
/* 80274BD0  41 82 00 50 */	beq lbl_80274C20
/* 80274BD4  2C 16 00 00 */	cmpwi r22, 0
/* 80274BD8  41 82 00 48 */	beq lbl_80274C20
/* 80274BDC  80 6F 00 1C */	lwz r3, 0x1c(r15)
/* 80274BE0  80 63 00 00 */	lwz r3, 0(r3)
/* 80274BE4  80 03 00 08 */	lwz r0, 8(r3)
/* 80274BE8  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80274BEC  28 00 00 05 */	cmplwi r0, 5
/* 80274BF0  40 82 00 1C */	bne lbl_80274C0C
/* 80274BF4  3C 60 80 28 */	lis r3, JPADrawStripe__FP18JPAEmitterWorkData@ha /* 0x80279374@ha */
/* 80274BF8  38 03 93 74 */	addi r0, r3, JPADrawStripe__FP18JPAEmitterWorkData@l /* 0x80279374@l */
/* 80274BFC  80 6F 00 04 */	lwz r3, 4(r15)
/* 80274C00  90 03 00 00 */	stw r0, 0(r3)
/* 80274C04  38 60 00 01 */	li r3, 1
/* 80274C08  48 00 00 18 */	b lbl_80274C20
lbl_80274C0C:
/* 80274C0C  3C 60 80 28 */	lis r3, JPADrawStripeX__FP18JPAEmitterWorkData@ha /* 0x8027996C@ha */
/* 80274C10  38 03 99 6C */	addi r0, r3, JPADrawStripeX__FP18JPAEmitterWorkData@l /* 0x8027996C@l */
/* 80274C14  80 6F 00 04 */	lwz r3, 4(r15)
/* 80274C18  90 03 00 00 */	stw r0, 0(r3)
/* 80274C1C  38 60 00 01 */	li r3, 1
lbl_80274C20:
/* 80274C20  3C 80 80 28 */	lis r4, JPADrawEmitterCallBackB__FP18JPAEmitterWorkData@ha /* 0x8027A3D8@ha */
/* 80274C24  38 A4 A3 D8 */	addi r5, r4, JPADrawEmitterCallBackB__FP18JPAEmitterWorkData@l /* 0x8027A3D8@l */
/* 80274C28  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274C2C  54 60 10 3A */	slwi r0, r3, 2
/* 80274C30  7C A4 01 2E */	stwx r5, r4, r0
/* 80274C34  80 0F 00 28 */	lwz r0, 0x28(r15)
/* 80274C38  28 00 00 00 */	cmplwi r0, 0
/* 80274C3C  38 63 00 01 */	addi r3, r3, 1
/* 80274C40  41 82 00 1C */	beq lbl_80274C5C
/* 80274C44  3C 80 80 28 */	lis r4, JPALoadExTex__FP18JPAEmitterWorkData@ha /* 0x8027B040@ha */
/* 80274C48  38 A4 B0 40 */	addi r5, r4, JPALoadExTex__FP18JPAEmitterWorkData@l /* 0x8027B040@l */
/* 80274C4C  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274C50  54 60 10 3A */	slwi r0, r3, 2
/* 80274C54  7C A4 01 2E */	stwx r5, r4, r0
/* 80274C58  38 63 00 01 */	addi r3, r3, 1
lbl_80274C5C:
/* 80274C5C  2C 1B 00 00 */	cmpwi r27, 0
/* 80274C60  40 82 00 20 */	bne lbl_80274C80
/* 80274C64  3C 80 80 27 */	lis r4, JPALoadTex__FP18JPAEmitterWorkData@ha /* 0x802778EC@ha */
/* 80274C68  38 A4 78 EC */	addi r5, r4, JPALoadTex__FP18JPAEmitterWorkData@l /* 0x802778EC@l */
/* 80274C6C  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274C70  54 60 10 3A */	slwi r0, r3, 2
/* 80274C74  7C A4 01 2E */	stwx r5, r4, r0
/* 80274C78  38 63 00 01 */	addi r3, r3, 1
/* 80274C7C  48 00 00 24 */	b lbl_80274CA0
lbl_80274C80:
/* 80274C80  2C 1E 00 00 */	cmpwi r30, 0
/* 80274C84  41 82 00 1C */	beq lbl_80274CA0
/* 80274C88  3C 80 80 27 */	lis r4, JPALoadTexAnm__FP18JPAEmitterWorkData@ha /* 0x80277940@ha */
/* 80274C8C  38 A4 79 40 */	addi r5, r4, JPALoadTexAnm__FP18JPAEmitterWorkData@l /* 0x80277940@l */
/* 80274C90  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274C94  54 60 10 3A */	slwi r0, r3, 2
/* 80274C98  7C A4 01 2E */	stwx r5, r4, r0
/* 80274C9C  38 63 00 01 */	addi r3, r3, 1
lbl_80274CA0:
/* 80274CA0  2C 15 00 00 */	cmpwi r21, 0
/* 80274CA4  41 82 00 20 */	beq lbl_80274CC4
/* 80274CA8  3C 80 80 27 */	lis r4, JPAGenTexCrdMtxIdt__FP18JPAEmitterWorkData@ha /* 0x80277504@ha */
/* 80274CAC  38 A4 75 04 */	addi r5, r4, JPAGenTexCrdMtxIdt__FP18JPAEmitterWorkData@l /* 0x80277504@l */
/* 80274CB0  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274CB4  54 60 10 3A */	slwi r0, r3, 2
/* 80274CB8  7C A4 01 2E */	stwx r5, r4, r0
/* 80274CBC  38 63 00 01 */	addi r3, r3, 1
/* 80274CC0  48 00 00 90 */	b lbl_80274D50
lbl_80274CC4:
/* 80274CC4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80274CC8  2C 00 00 00 */	cmpwi r0, 0
/* 80274CCC  41 82 00 20 */	beq lbl_80274CEC
/* 80274CD0  3C 80 80 27 */	lis r4, JPAGenTexCrdMtxPrj__FP18JPAEmitterWorkData@ha /* 0x80277574@ha */
/* 80274CD4  38 A4 75 74 */	addi r5, r4, JPAGenTexCrdMtxPrj__FP18JPAEmitterWorkData@l /* 0x80277574@l */
/* 80274CD8  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274CDC  54 60 10 3A */	slwi r0, r3, 2
/* 80274CE0  7C A4 01 2E */	stwx r5, r4, r0
/* 80274CE4  38 63 00 01 */	addi r3, r3, 1
/* 80274CE8  48 00 00 68 */	b lbl_80274D50
lbl_80274CEC:
/* 80274CEC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80274CF0  2C 00 00 00 */	cmpwi r0, 0
/* 80274CF4  41 82 00 44 */	beq lbl_80274D38
/* 80274CF8  2C 16 00 00 */	cmpwi r22, 0
/* 80274CFC  41 82 00 20 */	beq lbl_80274D1C
/* 80274D00  3C 80 80 27 */	lis r4, JPAGenCalcTexCrdMtxAnm__FP18JPAEmitterWorkData@ha /* 0x802775AC@ha */
/* 80274D04  38 A4 75 AC */	addi r5, r4, JPAGenCalcTexCrdMtxAnm__FP18JPAEmitterWorkData@l /* 0x802775AC@l */
/* 80274D08  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274D0C  54 60 10 3A */	slwi r0, r3, 2
/* 80274D10  7C A4 01 2E */	stwx r5, r4, r0
/* 80274D14  38 63 00 01 */	addi r3, r3, 1
/* 80274D18  48 00 00 38 */	b lbl_80274D50
lbl_80274D1C:
/* 80274D1C  3C 80 80 27 */	lis r4, JPAGenTexCrdMtxAnm__FP18JPAEmitterWorkData@ha /* 0x8027753C@ha */
/* 80274D20  38 A4 75 3C */	addi r5, r4, JPAGenTexCrdMtxAnm__FP18JPAEmitterWorkData@l /* 0x8027753C@l */
/* 80274D24  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274D28  54 60 10 3A */	slwi r0, r3, 2
/* 80274D2C  7C A4 01 2E */	stwx r5, r4, r0
/* 80274D30  38 63 00 01 */	addi r3, r3, 1
/* 80274D34  48 00 00 1C */	b lbl_80274D50
lbl_80274D38:
/* 80274D38  3C 80 80 27 */	lis r4, JPAGenTexCrdMtxIdt__FP18JPAEmitterWorkData@ha /* 0x80277504@ha */
/* 80274D3C  38 A4 75 04 */	addi r5, r4, JPAGenTexCrdMtxIdt__FP18JPAEmitterWorkData@l /* 0x80277504@l */
/* 80274D40  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274D44  54 60 10 3A */	slwi r0, r3, 2
/* 80274D48  7C A4 01 2E */	stwx r5, r4, r0
/* 80274D4C  38 63 00 01 */	addi r3, r3, 1
lbl_80274D50:
/* 80274D50  2C 15 00 00 */	cmpwi r21, 0
/* 80274D54  41 82 00 1C */	beq lbl_80274D70
/* 80274D58  3C 80 80 27 */	lis r4, JPALoadPosMtxCam__FP18JPAEmitterWorkData@ha /* 0x80277C64@ha */
/* 80274D5C  38 A4 7C 64 */	addi r5, r4, JPALoadPosMtxCam__FP18JPAEmitterWorkData@l /* 0x80277C64@l */
/* 80274D60  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274D64  54 60 10 3A */	slwi r0, r3, 2
/* 80274D68  7C A4 01 2E */	stwx r5, r4, r0
/* 80274D6C  38 63 00 01 */	addi r3, r3, 1
lbl_80274D70:
/* 80274D70  2C 15 00 00 */	cmpwi r21, 0
/* 80274D74  41 82 00 4C */	beq lbl_80274DC0
/* 80274D78  2C 1A 00 00 */	cmpwi r26, 0
/* 80274D7C  40 82 00 44 */	bne lbl_80274DC0
/* 80274D80  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80274D84  2C 00 00 00 */	cmpwi r0, 0
/* 80274D88  41 82 00 20 */	beq lbl_80274DA8
/* 80274D8C  3C 80 80 27 */	lis r4, JPASetPointSize__FP18JPAEmitterWorkData@ha /* 0x80276A90@ha */
/* 80274D90  38 A4 6A 90 */	addi r5, r4, JPASetPointSize__FP18JPAEmitterWorkData@l /* 0x80276A90@l */
/* 80274D94  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274D98  54 60 10 3A */	slwi r0, r3, 2
/* 80274D9C  7C A4 01 2E */	stwx r5, r4, r0
/* 80274DA0  38 63 00 01 */	addi r3, r3, 1
/* 80274DA4  48 00 00 1C */	b lbl_80274DC0
lbl_80274DA8:
/* 80274DA8  3C 80 80 27 */	lis r4, JPASetLineWidth__FP18JPAEmitterWorkData@ha /* 0x80276ACC@ha */
/* 80274DAC  38 A4 6A CC */	addi r5, r4, JPASetLineWidth__FP18JPAEmitterWorkData@l /* 0x80276ACC@l */
/* 80274DB0  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274DB4  54 60 10 3A */	slwi r0, r3, 2
/* 80274DB8  7C A4 01 2E */	stwx r5, r4, r0
/* 80274DBC  38 63 00 01 */	addi r3, r3, 1
lbl_80274DC0:
/* 80274DC0  2C 1F 00 00 */	cmpwi r31, 0
/* 80274DC4  41 82 00 48 */	beq lbl_80274E0C
/* 80274DC8  2C 16 00 00 */	cmpwi r22, 0
/* 80274DCC  40 82 00 0C */	bne lbl_80274DD8
/* 80274DD0  2C 19 00 00 */	cmpwi r25, 0
/* 80274DD4  40 82 00 1C */	bne lbl_80274DF0
lbl_80274DD8:
/* 80274DD8  3C 80 80 27 */	lis r4, JPARegistPrmEnv__FP18JPAEmitterWorkData@ha /* 0x80276CB0@ha */
/* 80274DDC  38 A4 6C B0 */	addi r5, r4, JPARegistPrmEnv__FP18JPAEmitterWorkData@l /* 0x80276CB0@l */
/* 80274DE0  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274DE4  54 60 10 3A */	slwi r0, r3, 2
/* 80274DE8  7C A4 01 2E */	stwx r5, r4, r0
/* 80274DEC  48 00 00 84 */	b lbl_80274E70
lbl_80274DF0:
/* 80274DF0  41 82 00 80 */	beq lbl_80274E70
/* 80274DF4  3C 80 80 27 */	lis r4, JPARegistEnv__FP18JPAEmitterWorkData@ha /* 0x80276C2C@ha */
/* 80274DF8  38 A4 6C 2C */	addi r5, r4, JPARegistEnv__FP18JPAEmitterWorkData@l /* 0x80276C2C@l */
/* 80274DFC  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274E00  54 60 10 3A */	slwi r0, r3, 2
/* 80274E04  7C A4 01 2E */	stwx r5, r4, r0
/* 80274E08  48 00 00 68 */	b lbl_80274E70
lbl_80274E0C:
/* 80274E0C  2C 1D 00 00 */	cmpwi r29, 0
/* 80274E10  40 82 00 44 */	bne lbl_80274E54
/* 80274E14  2C 19 00 00 */	cmpwi r25, 0
/* 80274E18  40 82 00 3C */	bne lbl_80274E54
/* 80274E1C  2C 1C 00 00 */	cmpwi r28, 0
/* 80274E20  40 82 00 1C */	bne lbl_80274E3C
/* 80274E24  3C 80 80 27 */	lis r4, JPARegistPrmEnv__FP18JPAEmitterWorkData@ha /* 0x80276CB0@ha */
/* 80274E28  38 A4 6C B0 */	addi r5, r4, JPARegistPrmEnv__FP18JPAEmitterWorkData@l /* 0x80276CB0@l */
/* 80274E2C  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274E30  54 60 10 3A */	slwi r0, r3, 2
/* 80274E34  7C A4 01 2E */	stwx r5, r4, r0
/* 80274E38  48 00 00 38 */	b lbl_80274E70
lbl_80274E3C:
/* 80274E3C  3C 80 80 27 */	lis r4, JPARegistPrm__FP18JPAEmitterWorkData@ha /* 0x80276B90@ha */
/* 80274E40  38 A4 6B 90 */	addi r5, r4, JPARegistPrm__FP18JPAEmitterWorkData@l /* 0x80276B90@l */
/* 80274E44  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274E48  54 60 10 3A */	slwi r0, r3, 2
/* 80274E4C  7C A4 01 2E */	stwx r5, r4, r0
/* 80274E50  48 00 00 20 */	b lbl_80274E70
lbl_80274E54:
/* 80274E54  2C 1C 00 00 */	cmpwi r28, 0
/* 80274E58  40 82 00 18 */	bne lbl_80274E70
/* 80274E5C  3C 80 80 27 */	lis r4, JPARegistEnv__FP18JPAEmitterWorkData@ha /* 0x80276C2C@ha */
/* 80274E60  38 A4 6C 2C */	addi r5, r4, JPARegistEnv__FP18JPAEmitterWorkData@l /* 0x80276C2C@l */
/* 80274E64  80 8F 00 04 */	lwz r4, 4(r15)
/* 80274E68  54 60 10 3A */	slwi r0, r3, 2
/* 80274E6C  7C A4 01 2E */	stwx r5, r4, r0
lbl_80274E70:
/* 80274E70  2C 11 00 00 */	cmpwi r17, 0
/* 80274E74  41 82 00 18 */	beq lbl_80274E8C
/* 80274E78  2C 14 00 00 */	cmpwi r20, 0
/* 80274E7C  41 82 00 10 */	beq lbl_80274E8C
/* 80274E80  88 6F 00 43 */	lbz r3, 0x43(r15)
/* 80274E84  38 03 00 01 */	addi r0, r3, 1
/* 80274E88  98 0F 00 43 */	stb r0, 0x43(r15)
lbl_80274E8C:
/* 80274E8C  88 6F 00 43 */	lbz r3, 0x43(r15)
/* 80274E90  38 03 00 01 */	addi r0, r3, 1
/* 80274E94  98 0F 00 43 */	stb r0, 0x43(r15)
/* 80274E98  2C 13 00 00 */	cmpwi r19, 0
/* 80274E9C  41 82 00 10 */	beq lbl_80274EAC
/* 80274EA0  88 6F 00 43 */	lbz r3, 0x43(r15)
/* 80274EA4  38 03 00 01 */	addi r0, r3, 1
/* 80274EA8  98 0F 00 43 */	stb r0, 0x43(r15)
lbl_80274EAC:
/* 80274EAC  80 6F 00 24 */	lwz r3, 0x24(r15)
/* 80274EB0  28 03 00 00 */	cmplwi r3, 0
/* 80274EB4  41 82 00 30 */	beq lbl_80274EE4
/* 80274EB8  80 63 00 00 */	lwz r3, 0(r3)
/* 80274EBC  80 63 00 08 */	lwz r3, 8(r3)
/* 80274EC0  54 60 02 11 */	rlwinm. r0, r3, 0, 8, 8
/* 80274EC4  40 82 00 20 */	bne lbl_80274EE4
/* 80274EC8  54 60 03 9D */	rlwinm. r0, r3, 0, 0xe, 0xe
/* 80274ECC  40 82 00 18 */	bne lbl_80274EE4
/* 80274ED0  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 80274ED4  40 82 00 10 */	bne lbl_80274EE4
/* 80274ED8  88 6F 00 43 */	lbz r3, 0x43(r15)
/* 80274EDC  38 03 00 01 */	addi r0, r3, 1
/* 80274EE0  98 0F 00 43 */	stb r0, 0x43(r15)
lbl_80274EE4:
/* 80274EE4  88 0F 00 43 */	lbz r0, 0x43(r15)
/* 80274EE8  28 00 00 00 */	cmplwi r0, 0
/* 80274EEC  41 82 00 18 */	beq lbl_80274F04
/* 80274EF0  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 80274EF4  38 80 00 04 */	li r4, 4
/* 80274EF8  7E 05 83 78 */	mr r5, r16
/* 80274EFC  48 05 95 79 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80274F00  90 6F 00 08 */	stw r3, 8(r15)
lbl_80274F04:
/* 80274F04  38 60 00 00 */	li r3, 0
/* 80274F08  2C 11 00 00 */	cmpwi r17, 0
/* 80274F0C  41 82 00 50 */	beq lbl_80274F5C
/* 80274F10  2C 14 00 00 */	cmpwi r20, 0
/* 80274F14  41 82 00 48 */	beq lbl_80274F5C
/* 80274F18  80 6F 00 24 */	lwz r3, 0x24(r15)
/* 80274F1C  80 63 00 00 */	lwz r3, 0(r3)
/* 80274F20  80 03 00 08 */	lwz r0, 8(r3)
/* 80274F24  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80274F28  28 00 00 05 */	cmplwi r0, 5
/* 80274F2C  40 82 00 1C */	bne lbl_80274F48
/* 80274F30  3C 60 80 28 */	lis r3, JPADrawStripe__FP18JPAEmitterWorkData@ha /* 0x80279374@ha */
/* 80274F34  38 03 93 74 */	addi r0, r3, JPADrawStripe__FP18JPAEmitterWorkData@l /* 0x80279374@l */
/* 80274F38  80 6F 00 08 */	lwz r3, 8(r15)
/* 80274F3C  90 03 00 00 */	stw r0, 0(r3)
/* 80274F40  38 60 00 01 */	li r3, 1
/* 80274F44  48 00 00 18 */	b lbl_80274F5C
lbl_80274F48:
/* 80274F48  3C 60 80 28 */	lis r3, JPADrawStripeX__FP18JPAEmitterWorkData@ha /* 0x8027996C@ha */
/* 80274F4C  38 03 99 6C */	addi r0, r3, JPADrawStripeX__FP18JPAEmitterWorkData@l /* 0x8027996C@l */
/* 80274F50  80 6F 00 08 */	lwz r3, 8(r15)
/* 80274F54  90 03 00 00 */	stw r0, 0(r3)
/* 80274F58  38 60 00 01 */	li r3, 1
lbl_80274F5C:
/* 80274F5C  3C 80 80 28 */	lis r4, JPADrawEmitterCallBackB__FP18JPAEmitterWorkData@ha /* 0x8027A3D8@ha */
/* 80274F60  38 A4 A3 D8 */	addi r5, r4, JPADrawEmitterCallBackB__FP18JPAEmitterWorkData@l /* 0x8027A3D8@l */
/* 80274F64  80 8F 00 08 */	lwz r4, 8(r15)
/* 80274F68  54 60 10 3A */	slwi r0, r3, 2
/* 80274F6C  7C A4 01 2E */	stwx r5, r4, r0
/* 80274F70  2C 13 00 00 */	cmpwi r19, 0
/* 80274F74  38 63 00 01 */	addi r3, r3, 1
/* 80274F78  41 82 00 1C */	beq lbl_80274F94
/* 80274F7C  3C 80 80 27 */	lis r4, JPALoadPosMtxCam__FP18JPAEmitterWorkData@ha /* 0x80277C64@ha */
/* 80274F80  38 A4 7C 64 */	addi r5, r4, JPALoadPosMtxCam__FP18JPAEmitterWorkData@l /* 0x80277C64@l */
/* 80274F84  80 8F 00 08 */	lwz r4, 8(r15)
/* 80274F88  54 60 10 3A */	slwi r0, r3, 2
/* 80274F8C  7C A4 01 2E */	stwx r5, r4, r0
/* 80274F90  38 63 00 01 */	addi r3, r3, 1
lbl_80274F94:
/* 80274F94  80 8F 00 24 */	lwz r4, 0x24(r15)
/* 80274F98  28 04 00 00 */	cmplwi r4, 0
/* 80274F9C  41 82 00 38 */	beq lbl_80274FD4
/* 80274FA0  80 84 00 00 */	lwz r4, 0(r4)
/* 80274FA4  80 84 00 08 */	lwz r4, 8(r4)
/* 80274FA8  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 80274FAC  40 82 00 28 */	bne lbl_80274FD4
/* 80274FB0  54 80 03 9D */	rlwinm. r0, r4, 0, 0xe, 0xe
/* 80274FB4  40 82 00 20 */	bne lbl_80274FD4
/* 80274FB8  54 80 03 5B */	rlwinm. r0, r4, 0, 0xd, 0xd
/* 80274FBC  40 82 00 18 */	bne lbl_80274FD4
/* 80274FC0  3C 80 80 28 */	lis r4, JPARegistChildPrmEnv__FP18JPAEmitterWorkData@ha /* 0x8027AEBC@ha */
/* 80274FC4  38 A4 AE BC */	addi r5, r4, JPARegistChildPrmEnv__FP18JPAEmitterWorkData@l /* 0x8027AEBC@l */
/* 80274FC8  80 8F 00 08 */	lwz r4, 8(r15)
/* 80274FCC  54 60 10 3A */	slwi r0, r3, 2
/* 80274FD0  7C A4 01 2E */	stwx r5, r4, r0
lbl_80274FD4:
/* 80274FD4  2C 12 00 00 */	cmpwi r18, 0
/* 80274FD8  41 82 00 18 */	beq lbl_80274FF0
/* 80274FDC  2C 16 00 00 */	cmpwi r22, 0
/* 80274FE0  40 82 00 10 */	bne lbl_80274FF0
/* 80274FE4  88 6F 00 45 */	lbz r3, 0x45(r15)
/* 80274FE8  38 03 00 01 */	addi r0, r3, 1
/* 80274FEC  98 0F 00 45 */	stb r0, 0x45(r15)
lbl_80274FF0:
/* 80274FF0  88 6F 00 45 */	lbz r3, 0x45(r15)
/* 80274FF4  38 03 00 01 */	addi r0, r3, 1
/* 80274FF8  98 0F 00 45 */	stb r0, 0x45(r15)
/* 80274FFC  2C 1E 00 00 */	cmpwi r30, 0
/* 80275000  40 82 00 18 */	bne lbl_80275018
/* 80275004  2C 1B 00 00 */	cmpwi r27, 0
/* 80275008  41 82 00 10 */	beq lbl_80275018
/* 8027500C  88 6F 00 45 */	lbz r3, 0x45(r15)
/* 80275010  38 03 00 01 */	addi r0, r3, 1
/* 80275014  98 0F 00 45 */	stb r0, 0x45(r15)
lbl_80275018:
/* 80275018  2C 15 00 00 */	cmpwi r21, 0
/* 8027501C  41 82 00 0C */	beq lbl_80275028
/* 80275020  2C 1A 00 00 */	cmpwi r26, 0
/* 80275024  40 82 00 1C */	bne lbl_80275040
lbl_80275028:
/* 80275028  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027502C  2C 00 00 00 */	cmpwi r0, 0
/* 80275030  41 82 00 1C */	beq lbl_8027504C
/* 80275034  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80275038  2C 00 00 00 */	cmpwi r0, 0
/* 8027503C  40 82 00 10 */	bne lbl_8027504C
lbl_80275040:
/* 80275040  88 6F 00 45 */	lbz r3, 0x45(r15)
/* 80275044  38 03 00 01 */	addi r0, r3, 1
/* 80275048  98 0F 00 45 */	stb r0, 0x45(r15)
lbl_8027504C:
/* 8027504C  2C 1F 00 00 */	cmpwi r31, 0
/* 80275050  40 82 00 1C */	bne lbl_8027506C
/* 80275054  2C 1D 00 00 */	cmpwi r29, 0
/* 80275058  40 82 00 2C */	bne lbl_80275084
/* 8027505C  2C 1C 00 00 */	cmpwi r28, 0
/* 80275060  40 82 00 24 */	bne lbl_80275084
/* 80275064  2C 19 00 00 */	cmpwi r25, 0
/* 80275068  40 82 00 1C */	bne lbl_80275084
lbl_8027506C:
/* 8027506C  2C 1F 00 00 */	cmpwi r31, 0
/* 80275070  41 82 00 20 */	beq lbl_80275090
/* 80275074  2C 19 00 00 */	cmpwi r25, 0
/* 80275078  41 82 00 18 */	beq lbl_80275090
/* 8027507C  2C 16 00 00 */	cmpwi r22, 0
/* 80275080  40 82 00 10 */	bne lbl_80275090
lbl_80275084:
/* 80275084  88 6F 00 45 */	lbz r3, 0x45(r15)
/* 80275088  38 03 00 01 */	addi r0, r3, 1
/* 8027508C  98 0F 00 45 */	stb r0, 0x45(r15)
lbl_80275090:
/* 80275090  88 0F 00 45 */	lbz r0, 0x45(r15)
/* 80275094  28 00 00 00 */	cmplwi r0, 0
/* 80275098  41 82 00 18 */	beq lbl_802750B0
/* 8027509C  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 802750A0  38 80 00 04 */	li r4, 4
/* 802750A4  7E 05 83 78 */	mr r5, r16
/* 802750A8  48 05 93 CD */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 802750AC  90 6F 00 10 */	stw r3, 0x10(r15)
lbl_802750B0:
/* 802750B0  38 60 00 00 */	li r3, 0
/* 802750B4  2C 12 00 00 */	cmpwi r18, 0
/* 802750B8  41 82 01 1C */	beq lbl_802751D4
/* 802750BC  2C 16 00 00 */	cmpwi r22, 0
/* 802750C0  40 82 01 14 */	bne lbl_802751D4
/* 802750C4  80 6F 00 1C */	lwz r3, 0x1c(r15)
/* 802750C8  80 63 00 00 */	lwz r3, 0(r3)
/* 802750CC  80 03 00 08 */	lwz r0, 8(r3)
/* 802750D0  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 802750D4  28 00 00 0A */	cmplwi r0, 0xa
/* 802750D8  41 81 00 F8 */	bgt lbl_802751D0
/* 802750DC  3C 60 80 3C */	lis r3, lit_2828@ha /* 0x803C426C@ha */
/* 802750E0  38 63 42 6C */	addi r3, r3, lit_2828@l /* 0x803C426C@l */
/* 802750E4  54 00 10 3A */	slwi r0, r0, 2
/* 802750E8  7C 03 00 2E */	lwzx r0, r3, r0
/* 802750EC  7C 09 03 A6 */	mtctr r0
/* 802750F0  4E 80 04 20 */	bctr 
/* 802750F4  2C 18 00 00 */	cmpwi r24, 0
/* 802750F8  41 82 00 18 */	beq lbl_80275110
/* 802750FC  3C 60 80 27 */	lis r3, JPADrawRotBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277F70@ha */
/* 80275100  38 03 7F 70 */	addi r0, r3, JPADrawRotBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277F70@l */
/* 80275104  80 6F 00 10 */	lwz r3, 0x10(r15)
/* 80275108  90 03 00 00 */	stw r0, 0(r3)
/* 8027510C  48 00 00 C4 */	b lbl_802751D0
lbl_80275110:
/* 80275110  3C 60 80 27 */	lis r3, JPADrawBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277E88@ha */
/* 80275114  38 03 7E 88 */	addi r0, r3, JPADrawBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277E88@l */
/* 80275118  80 6F 00 10 */	lwz r3, 0x10(r15)
/* 8027511C  90 03 00 00 */	stw r0, 0(r3)
/* 80275120  48 00 00 B0 */	b lbl_802751D0
/* 80275124  2C 18 00 00 */	cmpwi r24, 0
/* 80275128  41 82 00 18 */	beq lbl_80275140
/* 8027512C  3C 60 80 28 */	lis r3, JPADrawRotYBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80278184@ha */
/* 80275130  38 03 81 84 */	addi r0, r3, JPADrawRotYBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80278184@l */
/* 80275134  80 6F 00 10 */	lwz r3, 0x10(r15)
/* 80275138  90 03 00 00 */	stw r0, 0(r3)
/* 8027513C  48 00 00 94 */	b lbl_802751D0
lbl_80275140:
/* 80275140  3C 60 80 28 */	lis r3, JPADrawYBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80278088@ha */
/* 80275144  38 03 80 88 */	addi r0, r3, JPADrawYBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80278088@l */
/* 80275148  80 6F 00 10 */	lwz r3, 0x10(r15)
/* 8027514C  90 03 00 00 */	stw r0, 0(r3)
/* 80275150  48 00 00 80 */	b lbl_802751D0
/* 80275154  2C 18 00 00 */	cmpwi r24, 0
/* 80275158  41 82 00 18 */	beq lbl_80275170
/* 8027515C  3C 60 80 28 */	lis r3, JPADrawRotDirection__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80278994@ha */
/* 80275160  38 03 89 94 */	addi r0, r3, JPADrawRotDirection__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80278994@l */
/* 80275164  80 6F 00 10 */	lwz r3, 0x10(r15)
/* 80275168  90 03 00 00 */	stw r0, 0(r3)
/* 8027516C  48 00 00 64 */	b lbl_802751D0
lbl_80275170:
/* 80275170  3C 60 80 28 */	lis r3, JPADrawDirection__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x802785F8@ha */
/* 80275174  38 03 85 F8 */	addi r0, r3, JPADrawDirection__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x802785F8@l */
/* 80275178  80 6F 00 10 */	lwz r3, 0x10(r15)
/* 8027517C  90 03 00 00 */	stw r0, 0(r3)
/* 80275180  48 00 00 50 */	b lbl_802751D0
/* 80275184  3C 60 80 28 */	lis r3, JPADrawDBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80278DA8@ha */
/* 80275188  38 03 8D A8 */	addi r0, r3, JPADrawDBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80278DA8@l */
/* 8027518C  80 6F 00 10 */	lwz r3, 0x10(r15)
/* 80275190  90 03 00 00 */	stw r0, 0(r3)
/* 80275194  48 00 00 3C */	b lbl_802751D0
/* 80275198  3C 60 80 28 */	lis r3, JPADrawRotation__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80278FC8@ha */
/* 8027519C  38 03 8F C8 */	addi r0, r3, JPADrawRotation__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80278FC8@l */
/* 802751A0  80 6F 00 10 */	lwz r3, 0x10(r15)
/* 802751A4  90 03 00 00 */	stw r0, 0(r3)
/* 802751A8  48 00 00 28 */	b lbl_802751D0
/* 802751AC  3C 60 80 28 */	lis r3, JPADrawPoint__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80279110@ha */
/* 802751B0  38 03 91 10 */	addi r0, r3, JPADrawPoint__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80279110@l */
/* 802751B4  80 6F 00 10 */	lwz r3, 0x10(r15)
/* 802751B8  90 03 00 00 */	stw r0, 0(r3)
/* 802751BC  48 00 00 14 */	b lbl_802751D0
/* 802751C0  3C 60 80 28 */	lis r3, JPADrawLine__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x802791B0@ha */
/* 802751C4  38 03 91 B0 */	addi r0, r3, JPADrawLine__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x802791B0@l */
/* 802751C8  80 6F 00 10 */	lwz r3, 0x10(r15)
/* 802751CC  90 03 00 00 */	stw r0, 0(r3)
lbl_802751D0:
/* 802751D0  38 60 00 01 */	li r3, 1
lbl_802751D4:
/* 802751D4  3C 80 80 28 */	lis r4, JPADrawParticleCallBack__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027A414@ha */
/* 802751D8  38 A4 A4 14 */	addi r5, r4, JPADrawParticleCallBack__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027A414@l */
/* 802751DC  80 8F 00 10 */	lwz r4, 0x10(r15)
/* 802751E0  54 60 10 3A */	slwi r0, r3, 2
/* 802751E4  7C A4 01 2E */	stwx r5, r4, r0
/* 802751E8  2C 1E 00 00 */	cmpwi r30, 0
/* 802751EC  38 63 00 01 */	addi r3, r3, 1
/* 802751F0  40 82 00 24 */	bne lbl_80275214
/* 802751F4  2C 1B 00 00 */	cmpwi r27, 0
/* 802751F8  41 82 00 1C */	beq lbl_80275214
/* 802751FC  3C 80 80 27 */	lis r4, JPALoadTexAnm__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277990@ha */
/* 80275200  38 A4 79 90 */	addi r5, r4, JPALoadTexAnm__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277990@l */
/* 80275204  80 8F 00 10 */	lwz r4, 0x10(r15)
/* 80275208  54 60 10 3A */	slwi r0, r3, 2
/* 8027520C  7C A4 01 2E */	stwx r5, r4, r0
/* 80275210  38 63 00 01 */	addi r3, r3, 1
lbl_80275214:
/* 80275214  2C 15 00 00 */	cmpwi r21, 0
/* 80275218  41 82 00 50 */	beq lbl_80275268
/* 8027521C  2C 1A 00 00 */	cmpwi r26, 0
/* 80275220  41 82 00 48 */	beq lbl_80275268
/* 80275224  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80275228  2C 00 00 00 */	cmpwi r0, 0
/* 8027522C  41 82 00 20 */	beq lbl_8027524C
/* 80275230  3C 80 80 27 */	lis r4, JPASetPointSize__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80276B08@ha */
/* 80275234  38 A4 6B 08 */	addi r5, r4, JPASetPointSize__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80276B08@l */
/* 80275238  80 8F 00 10 */	lwz r4, 0x10(r15)
/* 8027523C  54 60 10 3A */	slwi r0, r3, 2
/* 80275240  7C A4 01 2E */	stwx r5, r4, r0
/* 80275244  38 63 00 01 */	addi r3, r3, 1
/* 80275248  48 00 00 50 */	b lbl_80275298
lbl_8027524C:
/* 8027524C  3C 80 80 27 */	lis r4, JPASetLineWidth__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80276B4C@ha */
/* 80275250  38 A4 6B 4C */	addi r5, r4, JPASetLineWidth__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80276B4C@l */
/* 80275254  80 8F 00 10 */	lwz r4, 0x10(r15)
/* 80275258  54 60 10 3A */	slwi r0, r3, 2
/* 8027525C  7C A4 01 2E */	stwx r5, r4, r0
/* 80275260  38 63 00 01 */	addi r3, r3, 1
/* 80275264  48 00 00 34 */	b lbl_80275298
lbl_80275268:
/* 80275268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027526C  2C 00 00 00 */	cmpwi r0, 0
/* 80275270  41 82 00 28 */	beq lbl_80275298
/* 80275274  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80275278  2C 00 00 00 */	cmpwi r0, 0
/* 8027527C  40 82 00 1C */	bne lbl_80275298
/* 80275280  3C 80 80 27 */	lis r4, JPALoadCalcTexCrdMtxAnm__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277758@ha */
/* 80275284  38 A4 77 58 */	addi r5, r4, JPALoadCalcTexCrdMtxAnm__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277758@l */
/* 80275288  80 8F 00 10 */	lwz r4, 0x10(r15)
/* 8027528C  54 60 10 3A */	slwi r0, r3, 2
/* 80275290  7C A4 01 2E */	stwx r5, r4, r0
/* 80275294  38 63 00 01 */	addi r3, r3, 1
lbl_80275298:
/* 80275298  2C 1F 00 00 */	cmpwi r31, 0
/* 8027529C  40 82 00 A4 */	bne lbl_80275340
/* 802752A0  2C 1D 00 00 */	cmpwi r29, 0
/* 802752A4  41 82 00 3C */	beq lbl_802752E0
/* 802752A8  2C 1C 00 00 */	cmpwi r28, 0
/* 802752AC  41 82 00 1C */	beq lbl_802752C8
/* 802752B0  3C 80 80 27 */	lis r4, JPARegistPrmAlphaEnv__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80276F10@ha */
/* 802752B4  38 A4 6F 10 */	addi r5, r4, JPARegistPrmAlphaEnv__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80276F10@l */
/* 802752B8  80 8F 00 10 */	lwz r4, 0x10(r15)
/* 802752BC  54 60 10 3A */	slwi r0, r3, 2
/* 802752C0  7C A4 01 2E */	stwx r5, r4, r0
/* 802752C4  48 00 00 A0 */	b lbl_80275364
lbl_802752C8:
/* 802752C8  3C 80 80 27 */	lis r4, JPARegistPrmAlpha__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80276E60@ha */
/* 802752CC  38 A4 6E 60 */	addi r5, r4, JPARegistPrmAlpha__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80276E60@l */
/* 802752D0  80 8F 00 10 */	lwz r4, 0x10(r15)
/* 802752D4  54 60 10 3A */	slwi r0, r3, 2
/* 802752D8  7C A4 01 2E */	stwx r5, r4, r0
/* 802752DC  48 00 00 88 */	b lbl_80275364
lbl_802752E0:
/* 802752E0  2C 19 00 00 */	cmpwi r25, 0
/* 802752E4  41 82 00 3C */	beq lbl_80275320
/* 802752E8  2C 1C 00 00 */	cmpwi r28, 0
/* 802752EC  41 82 00 1C */	beq lbl_80275308
/* 802752F0  3C 80 80 27 */	lis r4, JPARegistAlphaEnv__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277024@ha */
/* 802752F4  38 A4 70 24 */	addi r5, r4, JPARegistAlphaEnv__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277024@l */
/* 802752F8  80 8F 00 10 */	lwz r4, 0x10(r15)
/* 802752FC  54 60 10 3A */	slwi r0, r3, 2
/* 80275300  7C A4 01 2E */	stwx r5, r4, r0
/* 80275304  48 00 00 60 */	b lbl_80275364
lbl_80275308:
/* 80275308  3C 80 80 27 */	lis r4, JPARegistAlpha__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80276DB0@ha */
/* 8027530C  38 A4 6D B0 */	addi r5, r4, JPARegistAlpha__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80276DB0@l */
/* 80275310  80 8F 00 10 */	lwz r4, 0x10(r15)
/* 80275314  54 60 10 3A */	slwi r0, r3, 2
/* 80275318  7C A4 01 2E */	stwx r5, r4, r0
/* 8027531C  48 00 00 48 */	b lbl_80275364
lbl_80275320:
/* 80275320  2C 1C 00 00 */	cmpwi r28, 0
/* 80275324  41 82 00 40 */	beq lbl_80275364
/* 80275328  3C 80 80 27 */	lis r4, JPARegistEnv__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277138@ha */
/* 8027532C  38 A4 71 38 */	addi r5, r4, JPARegistEnv__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277138@l */
/* 80275330  80 8F 00 10 */	lwz r4, 0x10(r15)
/* 80275334  54 60 10 3A */	slwi r0, r3, 2
/* 80275338  7C A4 01 2E */	stwx r5, r4, r0
/* 8027533C  48 00 00 28 */	b lbl_80275364
lbl_80275340:
/* 80275340  2C 19 00 00 */	cmpwi r25, 0
/* 80275344  41 82 00 20 */	beq lbl_80275364
/* 80275348  2C 16 00 00 */	cmpwi r22, 0
/* 8027534C  40 82 00 18 */	bne lbl_80275364
/* 80275350  3C 80 80 27 */	lis r4, JPARegistAlpha__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80276DB0@ha */
/* 80275354  38 A4 6D B0 */	addi r5, r4, JPARegistAlpha__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80276DB0@l */
/* 80275358  80 8F 00 10 */	lwz r4, 0x10(r15)
/* 8027535C  54 60 10 3A */	slwi r0, r3, 2
/* 80275360  7C A4 01 2E */	stwx r5, r4, r0
lbl_80275364:
/* 80275364  2C 11 00 00 */	cmpwi r17, 0
/* 80275368  41 82 00 24 */	beq lbl_8027538C
/* 8027536C  80 0F 00 24 */	lwz r0, 0x24(r15)
/* 80275370  28 00 00 00 */	cmplwi r0, 0
/* 80275374  41 82 00 18 */	beq lbl_8027538C
/* 80275378  2C 14 00 00 */	cmpwi r20, 0
/* 8027537C  40 82 00 10 */	bne lbl_8027538C
/* 80275380  88 6F 00 47 */	lbz r3, 0x47(r15)
/* 80275384  38 03 00 01 */	addi r0, r3, 1
/* 80275388  98 0F 00 47 */	stb r0, 0x47(r15)
lbl_8027538C:
/* 8027538C  88 6F 00 47 */	lbz r3, 0x47(r15)
/* 80275390  38 03 00 01 */	addi r0, r3, 1
/* 80275394  98 0F 00 47 */	stb r0, 0x47(r15)
/* 80275398  2C 13 00 00 */	cmpwi r19, 0
/* 8027539C  41 82 00 10 */	beq lbl_802753AC
/* 802753A0  88 6F 00 47 */	lbz r3, 0x47(r15)
/* 802753A4  38 03 00 01 */	addi r0, r3, 1
/* 802753A8  98 0F 00 47 */	stb r0, 0x47(r15)
lbl_802753AC:
/* 802753AC  80 6F 00 24 */	lwz r3, 0x24(r15)
/* 802753B0  28 03 00 00 */	cmplwi r3, 0
/* 802753B4  41 82 00 30 */	beq lbl_802753E4
/* 802753B8  80 63 00 00 */	lwz r3, 0(r3)
/* 802753BC  80 63 00 08 */	lwz r3, 8(r3)
/* 802753C0  54 60 02 11 */	rlwinm. r0, r3, 0, 8, 8
/* 802753C4  40 82 00 14 */	bne lbl_802753D8
/* 802753C8  54 60 03 9D */	rlwinm. r0, r3, 0, 0xe, 0xe
/* 802753CC  40 82 00 0C */	bne lbl_802753D8
/* 802753D0  54 60 03 5B */	rlwinm. r0, r3, 0, 0xd, 0xd
/* 802753D4  41 82 00 10 */	beq lbl_802753E4
lbl_802753D8:
/* 802753D8  88 6F 00 47 */	lbz r3, 0x47(r15)
/* 802753DC  38 03 00 01 */	addi r0, r3, 1
/* 802753E0  98 0F 00 47 */	stb r0, 0x47(r15)
lbl_802753E4:
/* 802753E4  88 0F 00 47 */	lbz r0, 0x47(r15)
/* 802753E8  28 00 00 00 */	cmplwi r0, 0
/* 802753EC  41 82 00 18 */	beq lbl_80275404
/* 802753F0  54 03 15 BA */	rlwinm r3, r0, 2, 0x16, 0x1d
/* 802753F4  38 80 00 04 */	li r4, 4
/* 802753F8  7E 05 83 78 */	mr r5, r16
/* 802753FC  48 05 90 79 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80275400  90 6F 00 18 */	stw r3, 0x18(r15)
lbl_80275404:
/* 80275404  38 60 00 00 */	li r3, 0
/* 80275408  2C 11 00 00 */	cmpwi r17, 0
/* 8027540C  41 82 01 24 */	beq lbl_80275530
/* 80275410  80 8F 00 24 */	lwz r4, 0x24(r15)
/* 80275414  28 04 00 00 */	cmplwi r4, 0
/* 80275418  41 82 01 18 */	beq lbl_80275530
/* 8027541C  2C 14 00 00 */	cmpwi r20, 0
/* 80275420  40 82 01 10 */	bne lbl_80275530
/* 80275424  80 64 00 00 */	lwz r3, 0(r4)
/* 80275428  80 03 00 08 */	lwz r0, 8(r3)
/* 8027542C  54 00 07 3E */	clrlwi r0, r0, 0x1c
/* 80275430  28 00 00 0A */	cmplwi r0, 0xa
/* 80275434  41 81 00 F8 */	bgt lbl_8027552C
/* 80275438  3C 60 80 3C */	lis r3, lit_2829@ha /* 0x803C4240@ha */
/* 8027543C  38 63 42 40 */	addi r3, r3, lit_2829@l /* 0x803C4240@l */
/* 80275440  54 00 10 3A */	slwi r0, r0, 2
/* 80275444  7C 03 00 2E */	lwzx r0, r3, r0
/* 80275448  7C 09 03 A6 */	mtctr r0
/* 8027544C  4E 80 04 20 */	bctr 
/* 80275450  2C 17 00 00 */	cmpwi r23, 0
/* 80275454  41 82 00 18 */	beq lbl_8027546C
/* 80275458  3C 60 80 27 */	lis r3, JPADrawRotBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277F70@ha */
/* 8027545C  38 03 7F 70 */	addi r0, r3, JPADrawRotBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277F70@l */
/* 80275460  80 6F 00 18 */	lwz r3, 0x18(r15)
/* 80275464  90 03 00 00 */	stw r0, 0(r3)
/* 80275468  48 00 00 C4 */	b lbl_8027552C
lbl_8027546C:
/* 8027546C  3C 60 80 27 */	lis r3, JPADrawBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80277E88@ha */
/* 80275470  38 03 7E 88 */	addi r0, r3, JPADrawBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80277E88@l */
/* 80275474  80 6F 00 18 */	lwz r3, 0x18(r15)
/* 80275478  90 03 00 00 */	stw r0, 0(r3)
/* 8027547C  48 00 00 B0 */	b lbl_8027552C
/* 80275480  2C 17 00 00 */	cmpwi r23, 0
/* 80275484  41 82 00 18 */	beq lbl_8027549C
/* 80275488  3C 60 80 28 */	lis r3, JPADrawRotYBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80278184@ha */
/* 8027548C  38 03 81 84 */	addi r0, r3, JPADrawRotYBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80278184@l */
/* 80275490  80 6F 00 18 */	lwz r3, 0x18(r15)
/* 80275494  90 03 00 00 */	stw r0, 0(r3)
/* 80275498  48 00 00 94 */	b lbl_8027552C
lbl_8027549C:
/* 8027549C  3C 60 80 28 */	lis r3, JPADrawYBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80278088@ha */
/* 802754A0  38 03 80 88 */	addi r0, r3, JPADrawYBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80278088@l */
/* 802754A4  80 6F 00 18 */	lwz r3, 0x18(r15)
/* 802754A8  90 03 00 00 */	stw r0, 0(r3)
/* 802754AC  48 00 00 80 */	b lbl_8027552C
/* 802754B0  2C 17 00 00 */	cmpwi r23, 0
/* 802754B4  41 82 00 18 */	beq lbl_802754CC
/* 802754B8  3C 60 80 28 */	lis r3, JPADrawRotDirection__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80278994@ha */
/* 802754BC  38 03 89 94 */	addi r0, r3, JPADrawRotDirection__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80278994@l */
/* 802754C0  80 6F 00 18 */	lwz r3, 0x18(r15)
/* 802754C4  90 03 00 00 */	stw r0, 0(r3)
/* 802754C8  48 00 00 64 */	b lbl_8027552C
lbl_802754CC:
/* 802754CC  3C 60 80 28 */	lis r3, JPADrawDirection__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x802785F8@ha */
/* 802754D0  38 03 85 F8 */	addi r0, r3, JPADrawDirection__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x802785F8@l */
/* 802754D4  80 6F 00 18 */	lwz r3, 0x18(r15)
/* 802754D8  90 03 00 00 */	stw r0, 0(r3)
/* 802754DC  48 00 00 50 */	b lbl_8027552C
/* 802754E0  3C 60 80 28 */	lis r3, JPADrawDBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80278DA8@ha */
/* 802754E4  38 03 8D A8 */	addi r0, r3, JPADrawDBillboard__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80278DA8@l */
/* 802754E8  80 6F 00 18 */	lwz r3, 0x18(r15)
/* 802754EC  90 03 00 00 */	stw r0, 0(r3)
/* 802754F0  48 00 00 3C */	b lbl_8027552C
/* 802754F4  3C 60 80 28 */	lis r3, JPADrawRotation__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80278FC8@ha */
/* 802754F8  38 03 8F C8 */	addi r0, r3, JPADrawRotation__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80278FC8@l */
/* 802754FC  80 6F 00 18 */	lwz r3, 0x18(r15)
/* 80275500  90 03 00 00 */	stw r0, 0(r3)
/* 80275504  48 00 00 28 */	b lbl_8027552C
/* 80275508  3C 60 80 28 */	lis r3, JPADrawPoint__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80279110@ha */
/* 8027550C  38 03 91 10 */	addi r0, r3, JPADrawPoint__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80279110@l */
/* 80275510  80 6F 00 18 */	lwz r3, 0x18(r15)
/* 80275514  90 03 00 00 */	stw r0, 0(r3)
/* 80275518  48 00 00 14 */	b lbl_8027552C
/* 8027551C  3C 60 80 28 */	lis r3, JPADrawLine__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x802791B0@ha */
/* 80275520  38 03 91 B0 */	addi r0, r3, JPADrawLine__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x802791B0@l */
/* 80275524  80 6F 00 18 */	lwz r3, 0x18(r15)
/* 80275528  90 03 00 00 */	stw r0, 0(r3)
lbl_8027552C:
/* 8027552C  38 60 00 01 */	li r3, 1
lbl_80275530:
/* 80275530  3C 80 80 28 */	lis r4, JPADrawParticleCallBack__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x8027A414@ha */
/* 80275534  38 A4 A4 14 */	addi r5, r4, JPADrawParticleCallBack__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x8027A414@l */
/* 80275538  80 8F 00 18 */	lwz r4, 0x18(r15)
/* 8027553C  54 60 10 3A */	slwi r0, r3, 2
/* 80275540  7C A4 01 2E */	stwx r5, r4, r0
/* 80275544  2C 13 00 00 */	cmpwi r19, 0
/* 80275548  38 63 00 01 */	addi r3, r3, 1
/* 8027554C  41 82 00 44 */	beq lbl_80275590
/* 80275550  80 01 00 08 */	lwz r0, 8(r1)
/* 80275554  2C 00 00 00 */	cmpwi r0, 0
/* 80275558  41 82 00 20 */	beq lbl_80275578
/* 8027555C  3C 80 80 27 */	lis r4, JPASetPointSize__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80276B08@ha */
/* 80275560  38 A4 6B 08 */	addi r5, r4, JPASetPointSize__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80276B08@l */
/* 80275564  80 8F 00 18 */	lwz r4, 0x18(r15)
/* 80275568  54 60 10 3A */	slwi r0, r3, 2
/* 8027556C  7C A4 01 2E */	stwx r5, r4, r0
/* 80275570  38 63 00 01 */	addi r3, r3, 1
/* 80275574  48 00 00 1C */	b lbl_80275590
lbl_80275578:
/* 80275578  3C 80 80 27 */	lis r4, JPASetLineWidth__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80276B4C@ha */
/* 8027557C  38 A4 6B 4C */	addi r5, r4, JPASetLineWidth__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80276B4C@l */
/* 80275580  80 8F 00 18 */	lwz r4, 0x18(r15)
/* 80275584  54 60 10 3A */	slwi r0, r3, 2
/* 80275588  7C A4 01 2E */	stwx r5, r4, r0
/* 8027558C  38 63 00 01 */	addi r3, r3, 1
lbl_80275590:
/* 80275590  80 8F 00 24 */	lwz r4, 0x24(r15)
/* 80275594  28 04 00 00 */	cmplwi r4, 0
/* 80275598  41 82 00 38 */	beq lbl_802755D0
/* 8027559C  80 84 00 00 */	lwz r4, 0(r4)
/* 802755A0  80 84 00 08 */	lwz r4, 8(r4)
/* 802755A4  54 80 02 11 */	rlwinm. r0, r4, 0, 8, 8
/* 802755A8  40 82 00 14 */	bne lbl_802755BC
/* 802755AC  54 80 03 9D */	rlwinm. r0, r4, 0, 0xe, 0xe
/* 802755B0  40 82 00 0C */	bne lbl_802755BC
/* 802755B4  54 80 03 5B */	rlwinm. r0, r4, 0, 0xd, 0xd
/* 802755B8  41 82 00 18 */	beq lbl_802755D0
lbl_802755BC:
/* 802755BC  3C 80 80 27 */	lis r4, JPARegistPrmAlphaEnv__FP18JPAEmitterWorkDataP15JPABaseParticle@ha /* 0x80276F10@ha */
/* 802755C0  38 A4 6F 10 */	addi r5, r4, JPARegistPrmAlphaEnv__FP18JPAEmitterWorkDataP15JPABaseParticle@l /* 0x80276F10@l */
/* 802755C4  80 8F 00 18 */	lwz r4, 0x18(r15)
/* 802755C8  54 60 10 3A */	slwi r0, r3, 2
/* 802755CC  7C A4 01 2E */	stwx r5, r4, r0
lbl_802755D0:
/* 802755D0  39 61 00 60 */	addi r11, r1, 0x60
/* 802755D4  48 0E CC 19 */	bl __restore_gpr
/* 802755D8  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802755DC  7C 08 03 A6 */	mtlr r0
/* 802755E0  38 21 00 60 */	addi r1, r1, 0x60
/* 802755E4  4E 80 00 20 */	blr 
