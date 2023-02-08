lbl_800387EC:
/* 800387EC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 800387F0  7C 08 02 A6 */	mflr r0
/* 800387F4  90 01 00 64 */	stw r0, 0x64(r1)
/* 800387F8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 800387FC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 80038800  28 04 00 01 */	cmplwi r4, 1
/* 80038804  40 82 00 5C */	bne lbl_80038860
/* 80038808  90 A1 00 10 */	stw r5, 0x10(r1)
/* 8003880C  38 61 00 10 */	addi r3, r1, 0x10
/* 80038810  38 81 00 3C */	addi r4, r1, 0x3c
/* 80038814  48 25 12 6D */	bl getData__Q47JStudio3stb4data22TParse_TParagraph_dataCFPQ57JStudio3stb4data22TParse_TParagraph_data5TData
/* 80038818  88 01 00 3C */	lbz r0, 0x3c(r1)
/* 8003881C  28 00 00 00 */	cmplwi r0, 0
/* 80038820  41 82 00 E8 */	beq lbl_80038908
/* 80038824  38 60 00 00 */	li r3, 0
/* 80038828  80 81 00 48 */	lwz r4, 0x48(r1)
/* 8003882C  28 04 00 00 */	cmplwi r4, 0
/* 80038830  41 82 00 1C */	beq lbl_8003884C
/* 80038834  28 00 00 32 */	cmplwi r0, 0x32
/* 80038838  40 82 00 14 */	bne lbl_8003884C
/* 8003883C  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80038840  28 00 00 00 */	cmplwi r0, 0
/* 80038844  41 82 00 08 */	beq lbl_8003884C
/* 80038848  38 60 00 01 */	li r3, 1
lbl_8003884C:
/* 8003884C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80038850  41 82 00 B8 */	beq lbl_80038908
/* 80038854  A0 64 00 00 */	lhz r3, 0(r4)
/* 80038858  48 00 16 85 */	bl setBranchType__7dDemo_cFUs
/* 8003885C  48 00 00 AC */	b lbl_80038908
lbl_80038860:
/* 80038860  28 04 00 02 */	cmplwi r4, 2
/* 80038864  40 82 00 68 */	bne lbl_800388CC
/* 80038868  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8003886C  38 61 00 0C */	addi r3, r1, 0xc
/* 80038870  38 81 00 28 */	addi r4, r1, 0x28
/* 80038874  48 25 12 0D */	bl getData__Q47JStudio3stb4data22TParse_TParagraph_dataCFPQ57JStudio3stb4data22TParse_TParagraph_data5TData
/* 80038878  83 E1 00 34 */	lwz r31, 0x34(r1)
/* 8003887C  3B C0 00 00 */	li r30, 0
/* 80038880  48 00 00 18 */	b lbl_80038898
lbl_80038884:
/* 80038884  7F E3 FB 78 */	mr r3, r31
/* 80038888  48 33 03 5D */	bl strlen
/* 8003888C  7F E3 FA 14 */	add r31, r3, r31
/* 80038890  3B FF 00 01 */	addi r31, r31, 1
/* 80038894  3B DE 00 01 */	addi r30, r30, 1
lbl_80038898:
/* 80038898  7F C3 07 34 */	extsh r3, r30
/* 8003889C  A8 0D 80 A0 */	lha r0, m_branchId__7dDemo_c(r13)
/* 800388A0  7C 03 00 00 */	cmpw r3, r0
/* 800388A4  41 80 FF E0 */	blt lbl_80038884
/* 800388A8  7F E3 FB 78 */	mr r3, r31
/* 800388AC  3C 80 80 38 */	lis r4, d_d_demo__stringBase0@ha /* 0x803797F8@ha */
/* 800388B0  38 84 97 F8 */	addi r4, r4, d_d_demo__stringBase0@l /* 0x803797F8@l */
/* 800388B4  48 33 00 E1 */	bl strcmp
/* 800388B8  2C 03 00 00 */	cmpwi r3, 0
/* 800388BC  41 82 00 4C */	beq lbl_80038908
/* 800388C0  7F E3 FB 78 */	mr r3, r31
/* 800388C4  4B FF FE E5 */	bl branchFile__FPCc
/* 800388C8  48 00 00 40 */	b lbl_80038908
lbl_800388CC:
/* 800388CC  28 04 00 03 */	cmplwi r4, 3
/* 800388D0  40 82 00 20 */	bne lbl_800388F0
/* 800388D4  90 A1 00 08 */	stw r5, 8(r1)
/* 800388D8  38 61 00 08 */	addi r3, r1, 8
/* 800388DC  38 81 00 14 */	addi r4, r1, 0x14
/* 800388E0  48 25 11 A1 */	bl getData__Q47JStudio3stb4data22TParse_TParagraph_dataCFPQ57JStudio3stb4data22TParse_TParagraph_data5TData
/* 800388E4  80 61 00 20 */	lwz r3, 0x20(r1)
/* 800388E8  4B FF FE C1 */	bl branchFile__FPCc
/* 800388EC  48 00 00 1C */	b lbl_80038908
lbl_800388F0:
/* 800388F0  90 83 00 4C */	stw r4, 0x4c(r3)
/* 800388F4  90 A3 00 50 */	stw r5, 0x50(r3)
/* 800388F8  90 C3 00 54 */	stw r6, 0x54(r3)
/* 800388FC  A0 03 00 04 */	lhz r0, 4(r3)
/* 80038900  60 00 00 01 */	ori r0, r0, 1
/* 80038904  B0 03 00 04 */	sth r0, 4(r3)
lbl_80038908:
/* 80038908  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8003890C  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 80038910  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80038914  7C 08 03 A6 */	mtlr r0
/* 80038918  38 21 00 60 */	addi r1, r1, 0x60
/* 8003891C  4E 80 00 20 */	blr 
