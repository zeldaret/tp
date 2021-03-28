lbl_80A7D73C:
/* 80A7D73C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80A7D740  7C 08 02 A6 */	mflr r0
/* 80A7D744  90 01 00 44 */	stw r0, 0x44(r1)
/* 80A7D748  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80A7D74C  7C 7F 1B 78 */	mr r31, r3
/* 80A7D750  3C 60 80 A8 */	lis r3, cNullVec__6Z2Calc@ha
/* 80A7D754  38 83 38 B0 */	addi r4, r3, cNullVec__6Z2Calc@l
/* 80A7D758  88 1F 0E 0B */	lbz r0, 0xe0b(r31)
/* 80A7D75C  2C 00 00 01 */	cmpwi r0, 1
/* 80A7D760  41 82 00 AC */	beq lbl_80A7D80C
/* 80A7D764  40 80 00 10 */	bge lbl_80A7D774
/* 80A7D768  2C 00 00 00 */	cmpwi r0, 0
/* 80A7D76C  40 80 00 14 */	bge lbl_80A7D780
/* 80A7D770  48 00 01 B0 */	b lbl_80A7D920
lbl_80A7D774:
/* 80A7D774  2C 00 00 03 */	cmpwi r0, 3
/* 80A7D778  40 80 01 A8 */	bge lbl_80A7D920
/* 80A7D77C  48 00 01 1C */	b lbl_80A7D898
lbl_80A7D780:
/* 80A7D780  80 64 02 EC */	lwz r3, 0x2ec(r4)
/* 80A7D784  80 04 02 F0 */	lwz r0, 0x2f0(r4)
/* 80A7D788  90 61 00 20 */	stw r3, 0x20(r1)
/* 80A7D78C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A7D790  80 04 02 F4 */	lwz r0, 0x2f4(r4)
/* 80A7D794  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A7D798  38 00 00 03 */	li r0, 3
/* 80A7D79C  B0 1F 0E 08 */	sth r0, 0xe08(r31)
/* 80A7D7A0  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80A7D7A4  4B 8E 48 74 */	b __ptmf_test
/* 80A7D7A8  2C 03 00 00 */	cmpwi r3, 0
/* 80A7D7AC  41 82 00 18 */	beq lbl_80A7D7C4
/* 80A7D7B0  7F E3 FB 78 */	mr r3, r31
/* 80A7D7B4  38 80 00 00 */	li r4, 0
/* 80A7D7B8  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80A7D7BC  4B 8E 48 C8 */	b __ptmf_scall
/* 80A7D7C0  60 00 00 00 */	nop 
lbl_80A7D7C4:
/* 80A7D7C4  38 00 00 00 */	li r0, 0
/* 80A7D7C8  B0 1F 0E 08 */	sth r0, 0xe08(r31)
/* 80A7D7CC  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80A7D7D0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A7D7D4  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80A7D7D8  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80A7D7DC  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80A7D7E0  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80A7D7E4  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80A7D7E8  4B 8E 48 30 */	b __ptmf_test
/* 80A7D7EC  2C 03 00 00 */	cmpwi r3, 0
/* 80A7D7F0  41 82 01 30 */	beq lbl_80A7D920
/* 80A7D7F4  7F E3 FB 78 */	mr r3, r31
/* 80A7D7F8  38 80 00 00 */	li r4, 0
/* 80A7D7FC  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80A7D800  4B 8E 48 84 */	b __ptmf_scall
/* 80A7D804  60 00 00 00 */	nop 
/* 80A7D808  48 00 01 18 */	b lbl_80A7D920
lbl_80A7D80C:
/* 80A7D80C  80 64 02 F8 */	lwz r3, 0x2f8(r4)
/* 80A7D810  80 04 02 FC */	lwz r0, 0x2fc(r4)
/* 80A7D814  90 61 00 14 */	stw r3, 0x14(r1)
/* 80A7D818  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A7D81C  80 04 03 00 */	lwz r0, 0x300(r4)
/* 80A7D820  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80A7D824  38 00 00 03 */	li r0, 3
/* 80A7D828  B0 1F 0E 08 */	sth r0, 0xe08(r31)
/* 80A7D82C  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80A7D830  4B 8E 47 E8 */	b __ptmf_test
/* 80A7D834  2C 03 00 00 */	cmpwi r3, 0
/* 80A7D838  41 82 00 18 */	beq lbl_80A7D850
/* 80A7D83C  7F E3 FB 78 */	mr r3, r31
/* 80A7D840  38 80 00 00 */	li r4, 0
/* 80A7D844  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80A7D848  4B 8E 48 3C */	b __ptmf_scall
/* 80A7D84C  60 00 00 00 */	nop 
lbl_80A7D850:
/* 80A7D850  38 00 00 00 */	li r0, 0
/* 80A7D854  B0 1F 0E 08 */	sth r0, 0xe08(r31)
/* 80A7D858  80 61 00 14 */	lwz r3, 0x14(r1)
/* 80A7D85C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80A7D860  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80A7D864  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80A7D868  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80A7D86C  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80A7D870  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80A7D874  4B 8E 47 A4 */	b __ptmf_test
/* 80A7D878  2C 03 00 00 */	cmpwi r3, 0
/* 80A7D87C  41 82 00 A4 */	beq lbl_80A7D920
/* 80A7D880  7F E3 FB 78 */	mr r3, r31
/* 80A7D884  38 80 00 00 */	li r4, 0
/* 80A7D888  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80A7D88C  4B 8E 47 F8 */	b __ptmf_scall
/* 80A7D890  60 00 00 00 */	nop 
/* 80A7D894  48 00 00 8C */	b lbl_80A7D920
lbl_80A7D898:
/* 80A7D898  80 64 03 04 */	lwz r3, 0x304(r4)
/* 80A7D89C  80 04 03 08 */	lwz r0, 0x308(r4)
/* 80A7D8A0  90 61 00 08 */	stw r3, 8(r1)
/* 80A7D8A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A7D8A8  80 04 03 0C */	lwz r0, 0x30c(r4)
/* 80A7D8AC  90 01 00 10 */	stw r0, 0x10(r1)
/* 80A7D8B0  38 00 00 03 */	li r0, 3
/* 80A7D8B4  B0 1F 0E 08 */	sth r0, 0xe08(r31)
/* 80A7D8B8  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80A7D8BC  4B 8E 47 5C */	b __ptmf_test
/* 80A7D8C0  2C 03 00 00 */	cmpwi r3, 0
/* 80A7D8C4  41 82 00 18 */	beq lbl_80A7D8DC
/* 80A7D8C8  7F E3 FB 78 */	mr r3, r31
/* 80A7D8CC  38 80 00 00 */	li r4, 0
/* 80A7D8D0  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80A7D8D4  4B 8E 47 B0 */	b __ptmf_scall
/* 80A7D8D8  60 00 00 00 */	nop 
lbl_80A7D8DC:
/* 80A7D8DC  38 00 00 00 */	li r0, 0
/* 80A7D8E0  B0 1F 0E 08 */	sth r0, 0xe08(r31)
/* 80A7D8E4  80 61 00 08 */	lwz r3, 8(r1)
/* 80A7D8E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80A7D8EC  90 7F 0D DC */	stw r3, 0xddc(r31)
/* 80A7D8F0  90 1F 0D E0 */	stw r0, 0xde0(r31)
/* 80A7D8F4  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80A7D8F8  90 1F 0D E4 */	stw r0, 0xde4(r31)
/* 80A7D8FC  38 7F 0D DC */	addi r3, r31, 0xddc
/* 80A7D900  4B 8E 47 18 */	b __ptmf_test
/* 80A7D904  2C 03 00 00 */	cmpwi r3, 0
/* 80A7D908  41 82 00 18 */	beq lbl_80A7D920
/* 80A7D90C  7F E3 FB 78 */	mr r3, r31
/* 80A7D910  38 80 00 00 */	li r4, 0
/* 80A7D914  39 9F 0D DC */	addi r12, r31, 0xddc
/* 80A7D918  4B 8E 47 6C */	b __ptmf_scall
/* 80A7D91C  60 00 00 00 */	nop 
lbl_80A7D920:
/* 80A7D920  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80A7D924  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80A7D928  7C 08 03 A6 */	mtlr r0
/* 80A7D92C  38 21 00 40 */	addi r1, r1, 0x40
/* 80A7D930  4E 80 00 20 */	blr 
