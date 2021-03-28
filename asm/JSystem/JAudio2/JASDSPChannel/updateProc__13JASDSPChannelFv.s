lbl_8029D65C:
/* 8029D65C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8029D660  7C 08 02 A6 */	mflr r0
/* 8029D664  90 01 00 14 */	stw r0, 0x14(r1)
/* 8029D668  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8029D66C  7C 7F 1B 78 */	mr r31, r3
/* 8029D670  80 63 00 18 */	lwz r3, 0x18(r3)
/* 8029D674  48 00 07 09 */	bl isFinish__Q26JASDsp8TChannelCFv
/* 8029D678  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8029D67C  41 82 00 70 */	beq lbl_8029D6EC
/* 8029D680  80 1F 00 08 */	lwz r0, 8(r31)
/* 8029D684  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 8029D688  90 1F 00 08 */	stw r0, 8(r31)
/* 8029D68C  80 1F 00 00 */	lwz r0, 0(r31)
/* 8029D690  2C 00 00 00 */	cmpwi r0, 0
/* 8029D694  40 82 00 3C */	bne lbl_8029D6D0
/* 8029D698  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 8029D69C  28 0C 00 00 */	cmplwi r12, 0
/* 8029D6A0  41 82 00 1C */	beq lbl_8029D6BC
/* 8029D6A4  38 60 00 02 */	li r3, 2
/* 8029D6A8  38 80 00 00 */	li r4, 0
/* 8029D6AC  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8029D6B0  7D 89 03 A6 */	mtctr r12
/* 8029D6B4  4E 80 04 21 */	bctrl 
/* 8029D6B8  48 00 00 08 */	b lbl_8029D6C0
lbl_8029D6BC:
/* 8029D6BC  38 60 FF FF */	li r3, -1
lbl_8029D6C0:
/* 8029D6C0  2C 03 00 00 */	cmpwi r3, 0
/* 8029D6C4  40 80 00 0C */	bge lbl_8029D6D0
/* 8029D6C8  38 00 FF FF */	li r0, -1
/* 8029D6CC  B0 1F 00 04 */	sth r0, 4(r31)
lbl_8029D6D0:
/* 8029D6D0  38 00 00 01 */	li r0, 1
/* 8029D6D4  90 1F 00 00 */	stw r0, 0(r31)
/* 8029D6D8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D6DC  48 00 06 75 */	bl replyFinishRequest__Q26JASDsp8TChannelFv
/* 8029D6E0  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D6E4  48 00 08 A9 */	bl flush__Q26JASDsp8TChannelFv
/* 8029D6E8  48 00 01 A0 */	b lbl_8029D888
lbl_8029D6EC:
/* 8029D6EC  80 7F 00 08 */	lwz r3, 8(r31)
/* 8029D6F0  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 8029D6F4  41 82 00 20 */	beq lbl_8029D714
/* 8029D6F8  54 60 07 FA */	rlwinm r0, r3, 0, 0x1f, 0x1d
/* 8029D6FC  90 1F 00 08 */	stw r0, 8(r31)
/* 8029D700  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D704  48 00 06 5D */	bl forceStop__Q26JASDsp8TChannelFv
/* 8029D708  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D70C  48 00 08 81 */	bl flush__Q26JASDsp8TChannelFv
/* 8029D710  48 00 01 78 */	b lbl_8029D888
lbl_8029D714:
/* 8029D714  80 9F 00 00 */	lwz r4, 0(r31)
/* 8029D718  2C 04 00 02 */	cmpwi r4, 2
/* 8029D71C  41 82 01 6C */	beq lbl_8029D888
/* 8029D720  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 8029D724  41 82 00 B4 */	beq lbl_8029D7D8
/* 8029D728  2C 04 00 01 */	cmpwi r4, 1
/* 8029D72C  40 82 00 AC */	bne lbl_8029D7D8
/* 8029D730  54 60 00 3C */	rlwinm r0, r3, 0, 0, 0x1e
/* 8029D734  90 1F 00 08 */	stw r0, 8(r31)
/* 8029D738  38 00 00 00 */	li r0, 0
/* 8029D73C  90 1F 00 00 */	stw r0, 0(r31)
/* 8029D740  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D744  48 00 05 61 */	bl init__Q26JASDsp8TChannelFv
/* 8029D748  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 8029D74C  28 0C 00 00 */	cmplwi r12, 0
/* 8029D750  41 82 00 1C */	beq lbl_8029D76C
/* 8029D754  38 60 00 01 */	li r3, 1
/* 8029D758  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8029D75C  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8029D760  7D 89 03 A6 */	mtctr r12
/* 8029D764  4E 80 04 21 */	bctrl 
/* 8029D768  48 00 00 08 */	b lbl_8029D770
lbl_8029D76C:
/* 8029D76C  38 60 00 00 */	li r3, 0
lbl_8029D770:
/* 8029D770  2C 03 00 00 */	cmpwi r3, 0
/* 8029D774  40 80 00 50 */	bge lbl_8029D7C4
/* 8029D778  38 00 00 01 */	li r0, 1
/* 8029D77C  90 1F 00 00 */	stw r0, 0(r31)
/* 8029D780  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 8029D784  28 0C 00 00 */	cmplwi r12, 0
/* 8029D788  41 82 00 1C */	beq lbl_8029D7A4
/* 8029D78C  38 60 00 02 */	li r3, 2
/* 8029D790  38 80 00 00 */	li r4, 0
/* 8029D794  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8029D798  7D 89 03 A6 */	mtctr r12
/* 8029D79C  4E 80 04 21 */	bctrl 
/* 8029D7A0  48 00 00 08 */	b lbl_8029D7A8
lbl_8029D7A4:
/* 8029D7A4  38 60 FF FF */	li r3, -1
lbl_8029D7A8:
/* 8029D7A8  2C 03 00 00 */	cmpwi r3, 0
/* 8029D7AC  40 80 00 0C */	bge lbl_8029D7B8
/* 8029D7B0  38 00 FF FF */	li r0, -1
/* 8029D7B4  B0 1F 00 04 */	sth r0, 4(r31)
lbl_8029D7B8:
/* 8029D7B8  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D7BC  48 00 07 D1 */	bl flush__Q26JASDsp8TChannelFv
/* 8029D7C0  48 00 00 C8 */	b lbl_8029D888
lbl_8029D7C4:
/* 8029D7C4  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D7C8  48 00 05 19 */	bl playStart__Q26JASDsp8TChannelFv
/* 8029D7CC  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D7D0  48 00 07 BD */	bl flush__Q26JASDsp8TChannelFv
/* 8029D7D4  48 00 00 B4 */	b lbl_8029D888
lbl_8029D7D8:
/* 8029D7D8  2C 04 00 01 */	cmpwi r4, 1
/* 8029D7DC  41 82 00 AC */	beq lbl_8029D888
/* 8029D7E0  38 80 00 00 */	li r4, 0
/* 8029D7E4  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 8029D7E8  28 0C 00 00 */	cmplwi r12, 0
/* 8029D7EC  41 82 00 20 */	beq lbl_8029D80C
/* 8029D7F0  38 60 00 00 */	li r3, 0
/* 8029D7F4  80 9F 00 18 */	lwz r4, 0x18(r31)
/* 8029D7F8  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8029D7FC  7D 89 03 A6 */	mtctr r12
/* 8029D800  4E 80 04 21 */	bctrl 
/* 8029D804  38 80 00 01 */	li r4, 1
/* 8029D808  48 00 00 08 */	b lbl_8029D810
lbl_8029D80C:
/* 8029D80C  38 60 00 00 */	li r3, 0
lbl_8029D810:
/* 8029D810  2C 03 00 00 */	cmpwi r3, 0
/* 8029D814  40 80 00 58 */	bge lbl_8029D86C
/* 8029D818  38 00 00 01 */	li r0, 1
/* 8029D81C  90 1F 00 00 */	stw r0, 0(r31)
/* 8029D820  81 9F 00 10 */	lwz r12, 0x10(r31)
/* 8029D824  28 0C 00 00 */	cmplwi r12, 0
/* 8029D828  41 82 00 1C */	beq lbl_8029D844
/* 8029D82C  38 60 00 02 */	li r3, 2
/* 8029D830  38 80 00 00 */	li r4, 0
/* 8029D834  80 BF 00 14 */	lwz r5, 0x14(r31)
/* 8029D838  7D 89 03 A6 */	mtctr r12
/* 8029D83C  4E 80 04 21 */	bctrl 
/* 8029D840  48 00 00 08 */	b lbl_8029D848
lbl_8029D844:
/* 8029D844  38 60 FF FF */	li r3, -1
lbl_8029D848:
/* 8029D848  2C 03 00 00 */	cmpwi r3, 0
/* 8029D84C  40 80 00 0C */	bge lbl_8029D858
/* 8029D850  38 00 FF FF */	li r0, -1
/* 8029D854  B0 1F 00 04 */	sth r0, 4(r31)
lbl_8029D858:
/* 8029D858  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D85C  48 00 04 E9 */	bl playStop__Q26JASDsp8TChannelFv
/* 8029D860  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D864  48 00 07 29 */	bl flush__Q26JASDsp8TChannelFv
/* 8029D868  48 00 00 20 */	b lbl_8029D888
lbl_8029D86C:
/* 8029D86C  80 7F 00 0C */	lwz r3, 0xc(r31)
/* 8029D870  38 03 00 01 */	addi r0, r3, 1
/* 8029D874  90 1F 00 0C */	stw r0, 0xc(r31)
/* 8029D878  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8029D87C  41 82 00 0C */	beq lbl_8029D888
/* 8029D880  80 7F 00 18 */	lwz r3, 0x18(r31)
/* 8029D884  48 00 07 09 */	bl flush__Q26JASDsp8TChannelFv
lbl_8029D888:
/* 8029D888  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8029D88C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8029D890  7C 08 03 A6 */	mtlr r0
/* 8029D894  38 21 00 10 */	addi r1, r1, 0x10
/* 8029D898  4E 80 00 20 */	blr 
