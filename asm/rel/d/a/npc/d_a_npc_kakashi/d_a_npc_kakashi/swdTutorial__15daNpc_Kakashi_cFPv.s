lbl_8054D694:
/* 8054D694  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D698  7C 08 02 A6 */	mflr r0
/* 8054D69C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D6A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054D6A4  93 C1 00 08 */	stw r30, 8(r1)
/* 8054D6A8  7C 7F 1B 78 */	mr r31, r3
/* 8054D6AC  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 8054D6B0  2C 00 00 02 */	cmpwi r0, 2
/* 8054D6B4  41 82 00 20 */	beq lbl_8054D6D4
/* 8054D6B8  40 80 01 E8 */	bge lbl_8054D8A0
/* 8054D6BC  2C 00 00 00 */	cmpwi r0, 0
/* 8054D6C0  40 80 00 0C */	bge lbl_8054D6CC
/* 8054D6C4  48 00 01 DC */	b lbl_8054D8A0
/* 8054D6C8  48 00 01 D8 */	b lbl_8054D8A0
lbl_8054D6CC:
/* 8054D6CC  38 00 00 02 */	li r0, 2
/* 8054D6D0  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_8054D6D4:
/* 8054D6D4  4B AE 40 0C */	b daNpcKakashi_getSwdTutorialStep__Fv
/* 8054D6D8  7C 7E 1B 78 */	mr r30, r3
/* 8054D6DC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8054D6E0  40 82 00 18 */	bne lbl_8054D6F8
/* 8054D6E4  38 00 00 03 */	li r0, 3
/* 8054D6E8  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8054D6EC  38 00 00 01 */	li r0, 1
/* 8054D6F0  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 8054D6F4  48 00 01 AC */	b lbl_8054D8A0
lbl_8054D6F8:
/* 8054D6F8  88 1F 13 90 */	lbz r0, 0x1390(r31)
/* 8054D6FC  28 00 00 00 */	cmplwi r0, 0
/* 8054D700  41 82 00 6C */	beq lbl_8054D76C
/* 8054D704  80 1F 0D B0 */	lwz r0, 0xdb0(r31)
/* 8054D708  2C 00 00 00 */	cmpwi r0, 0
/* 8054D70C  41 82 00 60 */	beq lbl_8054D76C
/* 8054D710  7F E3 FB 78 */	mr r3, r31
/* 8054D714  4B FF FC 61 */	bl judgeSwdTutorial__15daNpc_Kakashi_cFv
/* 8054D718  2C 03 00 00 */	cmpwi r3, 0
/* 8054D71C  41 82 00 40 */	beq lbl_8054D75C
/* 8054D720  38 60 00 01 */	li r3, 1
/* 8054D724  4B AE 40 30 */	b daNpcKakashi_setSwdTutorialResult__Fb
/* 8054D728  4B AE 41 10 */	b daNpcKakashi_clrSuccessCount__Fv
/* 8054D72C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8054D730  28 00 00 02 */	cmplwi r0, 2
/* 8054D734  41 82 00 0C */	beq lbl_8054D740
/* 8054D738  28 00 00 03 */	cmplwi r0, 3
/* 8054D73C  40 82 00 14 */	bne lbl_8054D750
lbl_8054D740:
/* 8054D740  80 1F 0D B0 */	lwz r0, 0xdb0(r31)
/* 8054D744  2C 00 00 01 */	cmpwi r0, 1
/* 8054D748  41 82 00 08 */	beq lbl_8054D750
/* 8054D74C  4B AE 40 90 */	b daNpcKakashi_incSuccessCount__Fv
lbl_8054D750:
/* 8054D750  38 00 00 01 */	li r0, 1
/* 8054D754  98 1F 13 8E */	stb r0, 0x138e(r31)
/* 8054D758  48 00 00 14 */	b lbl_8054D76C
lbl_8054D75C:
/* 8054D75C  38 60 00 00 */	li r3, 0
/* 8054D760  4B AE 3F F4 */	b daNpcKakashi_setSwdTutorialResult__Fb
/* 8054D764  38 00 00 01 */	li r0, 1
/* 8054D768  98 1F 13 8F */	stb r0, 0x138f(r31)
lbl_8054D76C:
/* 8054D76C  4B AE 3F 74 */	b daNpcKakashi_getSwdTutorialStep__Fv
/* 8054D770  7C 7E 1B 78 */	mr r30, r3
/* 8054D774  4B AE 40 30 */	b daNpcKakashi_getSuccessCount__Fv
/* 8054D778  88 1F 13 8E */	lbz r0, 0x138e(r31)
/* 8054D77C  28 00 00 00 */	cmplwi r0, 0
/* 8054D780  41 82 00 9C */	beq lbl_8054D81C
/* 8054D784  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8054D788  2C 00 00 04 */	cmpwi r0, 4
/* 8054D78C  41 82 00 5C */	beq lbl_8054D7E8
/* 8054D790  40 80 00 18 */	bge lbl_8054D7A8
/* 8054D794  2C 00 00 02 */	cmpwi r0, 2
/* 8054D798  40 80 00 2C */	bge lbl_8054D7C4
/* 8054D79C  2C 00 00 00 */	cmpwi r0, 0
/* 8054D7A0  40 80 00 18 */	bge lbl_8054D7B8
/* 8054D7A4  48 00 00 70 */	b lbl_8054D814
lbl_8054D7A8:
/* 8054D7A8  2C 00 00 06 */	cmpwi r0, 6
/* 8054D7AC  41 82 00 5C */	beq lbl_8054D808
/* 8054D7B0  40 80 00 64 */	bge lbl_8054D814
/* 8054D7B4  48 00 00 40 */	b lbl_8054D7F4
lbl_8054D7B8:
/* 8054D7B8  38 00 00 00 */	li r0, 0
/* 8054D7BC  98 1F 13 8E */	stb r0, 0x138e(r31)
/* 8054D7C0  48 00 00 5C */	b lbl_8054D81C
lbl_8054D7C4:
/* 8054D7C4  80 1F 0D B0 */	lwz r0, 0xdb0(r31)
/* 8054D7C8  2C 00 00 01 */	cmpwi r0, 1
/* 8054D7CC  40 82 00 10 */	bne lbl_8054D7DC
/* 8054D7D0  38 00 00 0A */	li r0, 0xa
/* 8054D7D4  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8054D7D8  48 00 00 44 */	b lbl_8054D81C
lbl_8054D7DC:
/* 8054D7DC  38 00 00 06 */	li r0, 6
/* 8054D7E0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8054D7E4  48 00 00 38 */	b lbl_8054D81C
lbl_8054D7E8:
/* 8054D7E8  38 00 00 0D */	li r0, 0xd
/* 8054D7EC  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8054D7F0  48 00 00 2C */	b lbl_8054D81C
lbl_8054D7F4:
/* 8054D7F4  38 00 00 10 */	li r0, 0x10
/* 8054D7F8  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8054D7FC  38 00 00 01 */	li r0, 1
/* 8054D800  98 1F 13 91 */	stb r0, 0x1391(r31)
/* 8054D804  48 00 00 18 */	b lbl_8054D81C
lbl_8054D808:
/* 8054D808  38 00 00 13 */	li r0, 0x13
/* 8054D80C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8054D810  48 00 00 0C */	b lbl_8054D81C
lbl_8054D814:
/* 8054D814  38 00 00 00 */	li r0, 0
/* 8054D818  98 1F 13 8E */	stb r0, 0x138e(r31)
lbl_8054D81C:
/* 8054D81C  88 1F 13 8F */	lbz r0, 0x138f(r31)
/* 8054D820  28 00 00 00 */	cmplwi r0, 0
/* 8054D824  41 82 00 7C */	beq lbl_8054D8A0
/* 8054D828  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 8054D82C  2C 00 00 04 */	cmpwi r0, 4
/* 8054D830  41 82 00 44 */	beq lbl_8054D874
/* 8054D834  40 80 00 18 */	bge lbl_8054D84C
/* 8054D838  2C 00 00 02 */	cmpwi r0, 2
/* 8054D83C  40 80 00 2C */	bge lbl_8054D868
/* 8054D840  2C 00 00 00 */	cmpwi r0, 0
/* 8054D844  40 80 00 18 */	bge lbl_8054D85C
/* 8054D848  48 00 00 50 */	b lbl_8054D898
lbl_8054D84C:
/* 8054D84C  2C 00 00 06 */	cmpwi r0, 6
/* 8054D850  41 82 00 3C */	beq lbl_8054D88C
/* 8054D854  40 80 00 44 */	bge lbl_8054D898
/* 8054D858  48 00 00 28 */	b lbl_8054D880
lbl_8054D85C:
/* 8054D85C  38 00 00 00 */	li r0, 0
/* 8054D860  98 1F 13 8F */	stb r0, 0x138f(r31)
/* 8054D864  48 00 00 3C */	b lbl_8054D8A0
lbl_8054D868:
/* 8054D868  38 00 00 05 */	li r0, 5
/* 8054D86C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8054D870  48 00 00 30 */	b lbl_8054D8A0
lbl_8054D874:
/* 8054D874  38 00 00 0C */	li r0, 0xc
/* 8054D878  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8054D87C  48 00 00 24 */	b lbl_8054D8A0
lbl_8054D880:
/* 8054D880  38 00 00 0F */	li r0, 0xf
/* 8054D884  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8054D888  48 00 00 18 */	b lbl_8054D8A0
lbl_8054D88C:
/* 8054D88C  38 00 00 12 */	li r0, 0x12
/* 8054D890  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 8054D894  48 00 00 0C */	b lbl_8054D8A0
lbl_8054D898:
/* 8054D898  38 00 00 00 */	li r0, 0
/* 8054D89C  98 1F 13 8F */	stb r0, 0x138f(r31)
lbl_8054D8A0:
/* 8054D8A0  38 60 00 01 */	li r3, 1
/* 8054D8A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054D8A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054D8AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D8B0  7C 08 03 A6 */	mtlr r0
/* 8054D8B4  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D8B8  4E 80 00 20 */	blr 
