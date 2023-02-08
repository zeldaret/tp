lbl_809AC6F4:
/* 809AC6F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809AC6F8  7C 08 02 A6 */	mflr r0
/* 809AC6FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 809AC700  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809AC704  7C 7F 1B 78 */	mr r31, r3
/* 809AC708  A0 03 0E 04 */	lhz r0, 0xe04(r3)
/* 809AC70C  2C 00 00 02 */	cmpwi r0, 2
/* 809AC710  41 82 00 4C */	beq lbl_809AC75C
/* 809AC714  40 80 01 E0 */	bge lbl_809AC8F4
/* 809AC718  2C 00 00 00 */	cmpwi r0, 0
/* 809AC71C  41 82 00 0C */	beq lbl_809AC728
/* 809AC720  48 00 01 D4 */	b lbl_809AC8F4
/* 809AC724  48 00 01 D0 */	b lbl_809AC8F4
lbl_809AC728:
/* 809AC728  38 80 00 00 */	li r4, 0
/* 809AC72C  3C A0 80 9B */	lis r5, lit_4321@ha /* 0x809ADA2C@ha */
/* 809AC730  C0 25 DA 2C */	lfs f1, lit_4321@l(r5)  /* 0x809ADA2C@l */
/* 809AC734  38 A0 00 00 */	li r5, 0
/* 809AC738  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 809AC73C  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809AC740  7D 89 03 A6 */	mtctr r12
/* 809AC744  4E 80 04 21 */	bctrl 
/* 809AC748  38 00 00 00 */	li r0, 0
/* 809AC74C  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809AC750  38 00 00 02 */	li r0, 2
/* 809AC754  B0 1F 0E 04 */	sth r0, 0xe04(r31)
/* 809AC758  48 00 01 9C */	b lbl_809AC8F4
lbl_809AC75C:
/* 809AC75C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809AC760  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809AC764  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 809AC768  4B 66 DF A9 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 809AC76C  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 809AC770  2C 00 00 00 */	cmpwi r0, 0
/* 809AC774  40 82 00 4C */	bne lbl_809AC7C0
/* 809AC778  B0 7F 09 96 */	sth r3, 0x996(r31)
/* 809AC77C  38 00 00 00 */	li r0, 0
/* 809AC780  90 1F 09 68 */	stw r0, 0x968(r31)
/* 809AC784  A8 7F 08 F2 */	lha r3, 0x8f2(r31)
/* 809AC788  A8 1F 09 96 */	lha r0, 0x996(r31)
/* 809AC78C  7C 03 00 00 */	cmpw r3, r0
/* 809AC790  40 82 00 10 */	bne lbl_809AC7A0
/* 809AC794  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 809AC798  38 03 00 01 */	addi r0, r3, 1
/* 809AC79C  90 1F 09 6C */	stw r0, 0x96c(r31)
lbl_809AC7A0:
/* 809AC7A0  A8 1F 08 F2 */	lha r0, 0x8f2(r31)
/* 809AC7A4  B0 1F 04 DE */	sth r0, 0x4de(r31)
/* 809AC7A8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809AC7AC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 809AC7B0  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 809AC7B4  38 03 00 01 */	addi r0, r3, 1
/* 809AC7B8  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809AC7BC  48 00 00 64 */	b lbl_809AC820
lbl_809AC7C0:
/* 809AC7C0  2C 00 00 01 */	cmpwi r0, 1
/* 809AC7C4  40 82 00 5C */	bne lbl_809AC820
/* 809AC7C8  7F E3 FB 78 */	mr r3, r31
/* 809AC7CC  A8 9F 09 96 */	lha r4, 0x996(r31)
/* 809AC7D0  3C A0 80 9B */	lis r5, lit_4678@ha /* 0x809ADADC@ha */
/* 809AC7D4  C0 25 DA DC */	lfs f1, lit_4678@l(r5)  /* 0x809ADADC@l */
/* 809AC7D8  38 A0 00 00 */	li r5, 0
/* 809AC7DC  4B 7A 77 19 */	bl turn__8daNpcF_cFsfi
/* 809AC7E0  2C 03 00 00 */	cmpwi r3, 0
/* 809AC7E4  41 82 00 2C */	beq lbl_809AC810
/* 809AC7E8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809AC7EC  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 809AC7F0  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809AC7F4  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
/* 809AC7F8  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809AC7FC  B0 1F 08 F8 */	sth r0, 0x8f8(r31)
/* 809AC800  80 7F 09 6C */	lwz r3, 0x96c(r31)
/* 809AC804  38 03 00 01 */	addi r0, r3, 1
/* 809AC808  90 1F 09 6C */	stw r0, 0x96c(r31)
/* 809AC80C  48 00 00 14 */	b lbl_809AC820
lbl_809AC810:
/* 809AC810  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809AC814  B0 1F 04 E6 */	sth r0, 0x4e6(r31)
/* 809AC818  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 809AC81C  B0 1F 08 F2 */	sth r0, 0x8f2(r31)
lbl_809AC820:
/* 809AC820  80 1F 09 6C */	lwz r0, 0x96c(r31)
/* 809AC824  2C 00 00 01 */	cmpwi r0, 1
/* 809AC828  40 81 00 28 */	ble lbl_809AC850
/* 809AC82C  7F E3 FB 78 */	mr r3, r31
/* 809AC830  38 80 00 03 */	li r4, 3
/* 809AC834  3C A0 80 9B */	lis r5, lit_4321@ha /* 0x809ADA2C@ha */
/* 809AC838  C0 25 DA 2C */	lfs f1, lit_4321@l(r5)  /* 0x809ADA2C@l */
/* 809AC83C  38 A0 00 00 */	li r5, 0
/* 809AC840  81 9F 0B 44 */	lwz r12, 0xb44(r31)
/* 809AC844  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 809AC848  7D 89 03 A6 */	mtctr r12
/* 809AC84C  4E 80 04 21 */	bctrl 
lbl_809AC850:
/* 809AC850  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 809AC854  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 809AC858  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 809AC85C  28 00 00 00 */	cmplwi r0, 0
/* 809AC860  40 82 00 94 */	bne lbl_809AC8F4
/* 809AC864  3C 60 80 9B */	lis r3, lit_4799@ha /* 0x809ADC18@ha */
/* 809AC868  38 83 DC 18 */	addi r4, r3, lit_4799@l /* 0x809ADC18@l */
/* 809AC86C  80 64 00 00 */	lwz r3, 0(r4)
/* 809AC870  80 04 00 04 */	lwz r0, 4(r4)
/* 809AC874  90 61 00 08 */	stw r3, 8(r1)
/* 809AC878  90 01 00 0C */	stw r0, 0xc(r1)
/* 809AC87C  80 04 00 08 */	lwz r0, 8(r4)
/* 809AC880  90 01 00 10 */	stw r0, 0x10(r1)
/* 809AC884  38 00 00 03 */	li r0, 3
/* 809AC888  B0 1F 0E 04 */	sth r0, 0xe04(r31)
/* 809AC88C  38 7F 0D D4 */	addi r3, r31, 0xdd4
/* 809AC890  4B 9B 57 89 */	bl __ptmf_test
/* 809AC894  2C 03 00 00 */	cmpwi r3, 0
/* 809AC898  41 82 00 18 */	beq lbl_809AC8B0
/* 809AC89C  7F E3 FB 78 */	mr r3, r31
/* 809AC8A0  38 80 00 00 */	li r4, 0
/* 809AC8A4  39 9F 0D D4 */	addi r12, r31, 0xdd4
/* 809AC8A8  4B 9B 57 DD */	bl __ptmf_scall
/* 809AC8AC  60 00 00 00 */	nop 
lbl_809AC8B0:
/* 809AC8B0  38 00 00 00 */	li r0, 0
/* 809AC8B4  B0 1F 0E 04 */	sth r0, 0xe04(r31)
/* 809AC8B8  80 61 00 08 */	lwz r3, 8(r1)
/* 809AC8BC  80 01 00 0C */	lwz r0, 0xc(r1)
/* 809AC8C0  90 7F 0D D4 */	stw r3, 0xdd4(r31)
/* 809AC8C4  90 1F 0D D8 */	stw r0, 0xdd8(r31)
/* 809AC8C8  80 01 00 10 */	lwz r0, 0x10(r1)
/* 809AC8CC  90 1F 0D DC */	stw r0, 0xddc(r31)
/* 809AC8D0  38 7F 0D D4 */	addi r3, r31, 0xdd4
/* 809AC8D4  4B 9B 57 45 */	bl __ptmf_test
/* 809AC8D8  2C 03 00 00 */	cmpwi r3, 0
/* 809AC8DC  41 82 00 18 */	beq lbl_809AC8F4
/* 809AC8E0  7F E3 FB 78 */	mr r3, r31
/* 809AC8E4  38 80 00 00 */	li r4, 0
/* 809AC8E8  39 9F 0D D4 */	addi r12, r31, 0xdd4
/* 809AC8EC  4B 9B 57 99 */	bl __ptmf_scall
/* 809AC8F0  60 00 00 00 */	nop 
lbl_809AC8F4:
/* 809AC8F4  38 60 00 01 */	li r3, 1
/* 809AC8F8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809AC8FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809AC900  7C 08 03 A6 */	mtlr r0
/* 809AC904  38 21 00 20 */	addi r1, r1, 0x20
/* 809AC908  4E 80 00 20 */	blr 
