lbl_802AE5B0:
/* 802AE5B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802AE5B4  7C 08 02 A6 */	mflr r0
/* 802AE5B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 802AE5BC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802AE5C0  7C 9F 23 78 */	mr r31, r4
/* 802AE5C4  80 AD 86 04 */	lwz r5, __OSReport_disable-0x14(r13)
/* 802AE5C8  38 80 00 00 */	li r4, 0
/* 802AE5CC  80 05 00 08 */	lwz r0, 8(r5)
/* 802AE5D0  28 00 00 00 */	cmplwi r0, 0
/* 802AE5D4  40 82 00 10 */	bne lbl_802AE5E4
/* 802AE5D8  88 05 00 BA */	lbz r0, 0xba(r5)
/* 802AE5DC  28 00 00 00 */	cmplwi r0, 0
/* 802AE5E0  41 82 00 08 */	beq lbl_802AE5E8
lbl_802AE5E4:
/* 802AE5E4  38 80 00 01 */	li r4, 1
lbl_802AE5E8:
/* 802AE5E8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 802AE5EC  41 82 00 F0 */	beq lbl_802AE6DC
/* 802AE5F0  80 BF 00 00 */	lwz r5, 0(r31)
/* 802AE5F4  3C 80 00 06 */	lis r4, 6
/* 802AE5F8  7C 05 20 00 */	cmpw r5, r4
/* 802AE5FC  41 82 00 D0 */	beq lbl_802AE6CC
/* 802AE600  40 80 00 68 */	bge lbl_802AE668
/* 802AE604  2C 05 00 67 */	cmpwi r5, 0x67
/* 802AE608  40 80 00 2C */	bge lbl_802AE634
/* 802AE60C  2C 05 00 5F */	cmpwi r5, 0x5f
/* 802AE610  40 80 00 10 */	bge lbl_802AE620
/* 802AE614  2C 05 00 21 */	cmpwi r5, 0x21
/* 802AE618  41 82 00 B4 */	beq lbl_802AE6CC
/* 802AE61C  48 00 00 B8 */	b lbl_802AE6D4
lbl_802AE620:
/* 802AE620  2C 05 00 65 */	cmpwi r5, 0x65
/* 802AE624  40 80 00 A8 */	bge lbl_802AE6CC
/* 802AE628  2C 05 00 61 */	cmpwi r5, 0x61
/* 802AE62C  40 80 00 A8 */	bge lbl_802AE6D4
/* 802AE630  48 00 00 9C */	b lbl_802AE6CC
lbl_802AE634:
/* 802AE634  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050008@ha */
/* 802AE638  38 03 00 08 */	addi r0, r3, 0x0008 /* 0x00050008@l */
/* 802AE63C  7C 05 00 00 */	cmpw r5, r0
/* 802AE640  40 80 00 18 */	bge lbl_802AE658
/* 802AE644  3C 60 00 02 */	lis r3, 0x0002 /* 0x00020084@ha */
/* 802AE648  38 03 00 84 */	addi r0, r3, 0x0084 /* 0x00020084@l */
/* 802AE64C  7C 05 00 00 */	cmpw r5, r0
/* 802AE650  41 82 00 7C */	beq lbl_802AE6CC
/* 802AE654  48 00 00 80 */	b lbl_802AE6D4
lbl_802AE658:
/* 802AE658  38 03 00 0A */	addi r0, r3, 0xa
/* 802AE65C  7C 05 00 00 */	cmpw r5, r0
/* 802AE660  40 80 00 74 */	bge lbl_802AE6D4
/* 802AE664  48 00 00 68 */	b lbl_802AE6CC
lbl_802AE668:
/* 802AE668  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702C6@ha */
/* 802AE66C  38 03 02 C6 */	addi r0, r3, 0x02C6 /* 0x000702C6@l */
/* 802AE670  7C 05 00 00 */	cmpw r5, r0
/* 802AE674  41 82 00 58 */	beq lbl_802AE6CC
/* 802AE678  40 80 00 24 */	bge lbl_802AE69C
/* 802AE67C  38 03 00 CB */	addi r0, r3, 0xcb
/* 802AE680  7C 05 00 00 */	cmpw r5, r0
/* 802AE684  41 82 00 48 */	beq lbl_802AE6CC
/* 802AE688  40 80 00 4C */	bge lbl_802AE6D4
/* 802AE68C  38 04 00 5C */	addi r0, r4, 0x5c
/* 802AE690  7C 05 00 00 */	cmpw r5, r0
/* 802AE694  41 82 00 38 */	beq lbl_802AE6CC
/* 802AE698  48 00 00 3C */	b lbl_802AE6D4
lbl_802AE69C:
/* 802AE69C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000802AF@ha */
/* 802AE6A0  38 03 02 AF */	addi r0, r3, 0x02AF /* 0x000802AF@l */
/* 802AE6A4  7C 05 00 00 */	cmpw r5, r0
/* 802AE6A8  41 82 00 24 */	beq lbl_802AE6CC
/* 802AE6AC  40 80 00 28 */	bge lbl_802AE6D4
/* 802AE6B0  38 03 00 23 */	addi r0, r3, 0x23
/* 802AE6B4  7C 05 00 00 */	cmpw r5, r0
/* 802AE6B8  40 80 00 1C */	bge lbl_802AE6D4
/* 802AE6BC  38 03 00 1F */	addi r0, r3, 0x1f
/* 802AE6C0  7C 05 00 00 */	cmpw r5, r0
/* 802AE6C4  40 80 00 08 */	bge lbl_802AE6CC
/* 802AE6C8  48 00 00 0C */	b lbl_802AE6D4
lbl_802AE6CC:
/* 802AE6CC  38 60 00 00 */	li r3, 0
/* 802AE6D0  48 00 04 20 */	b lbl_802AEAF0
lbl_802AE6D4:
/* 802AE6D4  38 60 00 01 */	li r3, 1
/* 802AE6D8  48 00 04 18 */	b lbl_802AEAF0
lbl_802AE6DC:
/* 802AE6DC  80 1F 00 00 */	lwz r0, 0(r31)
/* 802AE6E0  3C C0 00 07 */	lis r6, 0x0007 /* 0x00070128@ha */
/* 802AE6E4  38 86 01 28 */	addi r4, r6, 0x0128 /* 0x00070128@l */
/* 802AE6E8  7C 00 20 00 */	cmpw r0, r4
/* 802AE6EC  41 82 01 C8 */	beq lbl_802AE8B4
/* 802AE6F0  40 80 00 E8 */	bge lbl_802AE7D8
/* 802AE6F4  3C A0 00 06 */	lis r5, 0x0006 /* 0x0006000A@ha */
/* 802AE6F8  38 85 00 0A */	addi r4, r5, 0x000A /* 0x0006000A@l */
/* 802AE6FC  7C 00 20 00 */	cmpw r0, r4
/* 802AE700  41 82 02 94 */	beq lbl_802AE994
/* 802AE704  40 80 00 74 */	bge lbl_802AE778
/* 802AE708  3C C0 00 04 */	lis r6, 0x0004 /* 0x00040022@ha */
/* 802AE70C  38 86 00 22 */	addi r4, r6, 0x0022 /* 0x00040022@l */
/* 802AE710  7C 00 20 00 */	cmpw r0, r4
/* 802AE714  41 82 03 D8 */	beq lbl_802AEAEC
/* 802AE718  40 80 00 38 */	bge lbl_802AE750
/* 802AE71C  3C 80 00 02 */	lis r4, 0x0002 /* 0x0002002C@ha */
/* 802AE720  38 A4 00 2C */	addi r5, r4, 0x002C /* 0x0002002C@l */
/* 802AE724  7C 00 28 00 */	cmpw r0, r5
/* 802AE728  41 82 01 CC */	beq lbl_802AE8F4
/* 802AE72C  40 80 00 14 */	bge lbl_802AE740
/* 802AE730  38 84 00 2B */	addi r4, r4, 0x2b
/* 802AE734  7C 00 20 00 */	cmpw r0, r4
/* 802AE738  40 80 01 FC */	bge lbl_802AE934
/* 802AE73C  48 00 03 B0 */	b lbl_802AEAEC
lbl_802AE740:
/* 802AE740  38 86 00 21 */	addi r4, r6, 0x21
/* 802AE744  7C 00 20 00 */	cmpw r0, r4
/* 802AE748  40 80 02 0C */	bge lbl_802AE954
/* 802AE74C  48 00 03 A0 */	b lbl_802AEAEC
lbl_802AE750:
/* 802AE750  7C 00 28 00 */	cmpw r0, r5
/* 802AE754  40 80 00 14 */	bge lbl_802AE768
/* 802AE758  38 86 00 24 */	addi r4, r6, 0x24
/* 802AE75C  7C 00 20 00 */	cmpw r0, r4
/* 802AE760  40 80 03 8C */	bge lbl_802AEAEC
/* 802AE764  48 00 01 B0 */	b lbl_802AE914
lbl_802AE768:
/* 802AE768  38 65 00 02 */	addi r3, r5, 2
/* 802AE76C  7C 00 18 00 */	cmpw r0, r3
/* 802AE770  40 80 03 7C */	bge lbl_802AEAEC
/* 802AE774  48 00 01 28 */	b lbl_802AE89C
lbl_802AE778:
/* 802AE778  38 86 00 8C */	addi r4, r6, 0x8c
/* 802AE77C  7C 00 20 00 */	cmpw r0, r4
/* 802AE780  41 82 02 D0 */	beq lbl_802AEA50
/* 802AE784  40 80 00 24 */	bge lbl_802AE7A8
/* 802AE788  38 85 00 28 */	addi r4, r5, 0x28
/* 802AE78C  7C 00 20 00 */	cmpw r0, r4
/* 802AE790  41 82 02 38 */	beq lbl_802AE9C8
/* 802AE794  41 80 03 58 */	blt lbl_802AEAEC
/* 802AE798  38 86 00 8B */	addi r4, r6, 0x8b
/* 802AE79C  7C 00 20 00 */	cmpw r0, r4
/* 802AE7A0  40 80 02 90 */	bge lbl_802AEA30
/* 802AE7A4  48 00 03 48 */	b lbl_802AEAEC
lbl_802AE7A8:
/* 802AE7A8  38 86 00 AF */	addi r4, r6, 0xaf
/* 802AE7AC  7C 00 20 00 */	cmpw r0, r4
/* 802AE7B0  41 82 03 3C */	beq lbl_802AEAEC
/* 802AE7B4  40 80 00 14 */	bge lbl_802AE7C8
/* 802AE7B8  38 86 00 AE */	addi r4, r6, 0xae
/* 802AE7BC  7C 00 20 00 */	cmpw r0, r4
/* 802AE7C0  40 80 02 50 */	bge lbl_802AEA10
/* 802AE7C4  48 00 03 28 */	b lbl_802AEAEC
lbl_802AE7C8:
/* 802AE7C8  38 86 00 B1 */	addi r4, r6, 0xb1
/* 802AE7CC  7C 00 20 00 */	cmpw r0, r4
/* 802AE7D0  40 80 03 1C */	bge lbl_802AEAEC
/* 802AE7D4  48 00 02 7C */	b lbl_802AEA50
lbl_802AE7D8:
/* 802AE7D8  38 86 03 20 */	addi r4, r6, 0x320
/* 802AE7DC  7C 00 20 00 */	cmpw r0, r4
/* 802AE7E0  41 82 02 30 */	beq lbl_802AEA10
/* 802AE7E4  40 80 00 54 */	bge lbl_802AE838
/* 802AE7E8  38 86 01 CA */	addi r4, r6, 0x1ca
/* 802AE7EC  7C 00 20 00 */	cmpw r0, r4
/* 802AE7F0  41 82 02 40 */	beq lbl_802AEA30
/* 802AE7F4  40 80 00 24 */	bge lbl_802AE818
/* 802AE7F8  38 86 01 C7 */	addi r4, r6, 0x1c7
/* 802AE7FC  7C 00 20 00 */	cmpw r0, r4
/* 802AE800  41 82 02 70 */	beq lbl_802AEA70
/* 802AE804  40 80 02 E8 */	bge lbl_802AEAEC
/* 802AE808  38 86 01 2B */	addi r4, r6, 0x12b
/* 802AE80C  7C 00 20 00 */	cmpw r0, r4
/* 802AE810  41 82 00 C4 */	beq lbl_802AE8D4
/* 802AE814  48 00 02 D8 */	b lbl_802AEAEC
lbl_802AE818:
/* 802AE818  38 86 01 D8 */	addi r4, r6, 0x1d8
/* 802AE81C  7C 00 20 00 */	cmpw r0, r4
/* 802AE820  41 82 02 10 */	beq lbl_802AEA30
/* 802AE824  40 80 02 C8 */	bge lbl_802AEAEC
/* 802AE828  38 86 01 CD */	addi r4, r6, 0x1cd
/* 802AE82C  7C 00 20 00 */	cmpw r0, r4
/* 802AE830  41 82 02 60 */	beq lbl_802AEA90
/* 802AE834  48 00 02 B8 */	b lbl_802AEAEC
lbl_802AE838:
/* 802AE838  38 86 04 4D */	addi r4, r6, 0x44d
/* 802AE83C  7C 00 20 00 */	cmpw r0, r4
/* 802AE840  41 82 02 70 */	beq lbl_802AEAB0
/* 802AE844  40 80 00 34 */	bge lbl_802AE878
/* 802AE848  38 86 03 7A */	addi r4, r6, 0x37a
/* 802AE84C  7C 00 20 00 */	cmpw r0, r4
/* 802AE850  41 82 00 64 */	beq lbl_802AE8B4
/* 802AE854  40 80 00 14 */	bge lbl_802AE868
/* 802AE858  38 86 03 79 */	addi r4, r6, 0x379
/* 802AE85C  7C 00 20 00 */	cmpw r0, r4
/* 802AE860  40 80 00 74 */	bge lbl_802AE8D4
/* 802AE864  48 00 02 88 */	b lbl_802AEAEC
lbl_802AE868:
/* 802AE868  38 86 04 4C */	addi r4, r6, 0x44c
/* 802AE86C  7C 00 20 00 */	cmpw r0, r4
/* 802AE870  40 80 02 60 */	bge lbl_802AEAD0
/* 802AE874  48 00 02 78 */	b lbl_802AEAEC
lbl_802AE878:
/* 802AE878  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800F6@ha */
/* 802AE87C  38 84 00 F6 */	addi r4, r4, 0x00F6 /* 0x000800F6@l */
/* 802AE880  7C 00 20 00 */	cmpw r0, r4
/* 802AE884  41 82 00 F0 */	beq lbl_802AE974
/* 802AE888  40 80 02 64 */	bge lbl_802AEAEC
/* 802AE88C  38 86 04 51 */	addi r4, r6, 0x451
/* 802AE890  7C 00 20 00 */	cmpw r0, r4
/* 802AE894  40 80 02 58 */	bge lbl_802AEAEC
/* 802AE898  48 00 02 38 */	b lbl_802AEAD0
lbl_802AE89C:
/* 802AE89C  80 6D 86 00 */	lwz r3, __OSReport_disable-0x18(r13)
/* 802AE8A0  88 03 00 1D */	lbz r0, 0x1d(r3)
/* 802AE8A4  28 00 00 00 */	cmplwi r0, 0
/* 802AE8A8  40 82 02 44 */	bne lbl_802AEAEC
/* 802AE8AC  38 60 00 01 */	li r3, 1
/* 802AE8B0  48 00 02 40 */	b lbl_802AEAF0
lbl_802AE8B4:
/* 802AE8B4  88 03 03 C0 */	lbz r0, 0x3c0(r3)
/* 802AE8B8  28 00 00 00 */	cmplwi r0, 0
/* 802AE8BC  41 82 00 0C */	beq lbl_802AE8C8
/* 802AE8C0  38 60 00 01 */	li r3, 1
/* 802AE8C4  48 00 02 2C */	b lbl_802AEAF0
lbl_802AE8C8:
/* 802AE8C8  38 00 00 04 */	li r0, 4
/* 802AE8CC  98 03 03 C0 */	stb r0, 0x3c0(r3)
/* 802AE8D0  48 00 02 1C */	b lbl_802AEAEC
lbl_802AE8D4:
/* 802AE8D4  88 03 03 C1 */	lbz r0, 0x3c1(r3)
/* 802AE8D8  28 00 00 00 */	cmplwi r0, 0
/* 802AE8DC  41 82 00 0C */	beq lbl_802AE8E8
/* 802AE8E0  38 60 00 01 */	li r3, 1
/* 802AE8E4  48 00 02 0C */	b lbl_802AEAF0
lbl_802AE8E8:
/* 802AE8E8  38 00 00 04 */	li r0, 4
/* 802AE8EC  98 03 03 C1 */	stb r0, 0x3c1(r3)
/* 802AE8F0  48 00 01 FC */	b lbl_802AEAEC
lbl_802AE8F4:
/* 802AE8F4  88 03 03 C2 */	lbz r0, 0x3c2(r3)
/* 802AE8F8  28 00 00 00 */	cmplwi r0, 0
/* 802AE8FC  41 82 00 0C */	beq lbl_802AE908
/* 802AE900  38 60 00 01 */	li r3, 1
/* 802AE904  48 00 01 EC */	b lbl_802AEAF0
lbl_802AE908:
/* 802AE908  38 00 00 02 */	li r0, 2
/* 802AE90C  98 03 03 C2 */	stb r0, 0x3c2(r3)
/* 802AE910  48 00 01 DC */	b lbl_802AEAEC
lbl_802AE914:
/* 802AE914  88 03 03 C9 */	lbz r0, 0x3c9(r3)
/* 802AE918  28 00 00 00 */	cmplwi r0, 0
/* 802AE91C  41 82 00 0C */	beq lbl_802AE928
/* 802AE920  38 60 00 01 */	li r3, 1
/* 802AE924  48 00 01 CC */	b lbl_802AEAF0
lbl_802AE928:
/* 802AE928  38 00 00 01 */	li r0, 1
/* 802AE92C  98 03 03 C9 */	stb r0, 0x3c9(r3)
/* 802AE930  48 00 01 BC */	b lbl_802AEAEC
lbl_802AE934:
/* 802AE934  88 03 03 C3 */	lbz r0, 0x3c3(r3)
/* 802AE938  28 00 00 00 */	cmplwi r0, 0
/* 802AE93C  41 82 00 0C */	beq lbl_802AE948
/* 802AE940  38 60 00 01 */	li r3, 1
/* 802AE944  48 00 01 AC */	b lbl_802AEAF0
lbl_802AE948:
/* 802AE948  38 00 00 04 */	li r0, 4
/* 802AE94C  98 03 03 C3 */	stb r0, 0x3c3(r3)
/* 802AE950  48 00 01 9C */	b lbl_802AEAEC
lbl_802AE954:
/* 802AE954  88 03 03 C4 */	lbz r0, 0x3c4(r3)
/* 802AE958  28 00 00 00 */	cmplwi r0, 0
/* 802AE95C  41 82 00 0C */	beq lbl_802AE968
/* 802AE960  38 60 00 01 */	li r3, 1
/* 802AE964  48 00 01 8C */	b lbl_802AEAF0
lbl_802AE968:
/* 802AE968  38 00 00 02 */	li r0, 2
/* 802AE96C  98 03 03 C4 */	stb r0, 0x3c4(r3)
/* 802AE970  48 00 01 7C */	b lbl_802AEAEC
lbl_802AE974:
/* 802AE974  88 03 03 C5 */	lbz r0, 0x3c5(r3)
/* 802AE978  28 00 00 00 */	cmplwi r0, 0
/* 802AE97C  41 82 00 0C */	beq lbl_802AE988
/* 802AE980  38 60 00 01 */	li r3, 1
/* 802AE984  48 00 01 6C */	b lbl_802AEAF0
lbl_802AE988:
/* 802AE988  38 00 00 02 */	li r0, 2
/* 802AE98C  98 03 03 C5 */	stb r0, 0x3c5(r3)
/* 802AE990  48 00 01 5C */	b lbl_802AEAEC
lbl_802AE994:
/* 802AE994  88 83 03 CA */	lbz r4, 0x3ca(r3)
/* 802AE998  28 04 00 00 */	cmplwi r4, 0
/* 802AE99C  41 82 00 0C */	beq lbl_802AE9A8
/* 802AE9A0  38 60 00 01 */	li r3, 1
/* 802AE9A4  48 00 01 4C */	b lbl_802AEAF0
lbl_802AE9A8:
/* 802AE9A8  38 80 00 01 */	li r4, 1
/* 802AE9AC  98 83 03 CA */	stb r4, 0x3ca(r3)
/* 802AE9B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 802AE9B4  80 6D 85 E0 */	lwz r3, __OSReport_disable-0x38(r13)
/* 802AE9B8  38 81 00 10 */	addi r4, r1, 0x10
/* 802AE9BC  C0 22 BE A8 */	lfs f1, lit_4052(r2)
/* 802AE9C0  4B FF C0 29 */	bl multiVolumeSoundID__10Z2SoundMgrF10JAISoundIDf
/* 802AE9C4  48 00 01 28 */	b lbl_802AEAEC
lbl_802AE9C8:
/* 802AE9C8  88 83 03 CB */	lbz r4, 0x3cb(r3)
/* 802AE9CC  28 04 00 00 */	cmplwi r4, 0
/* 802AE9D0  41 82 00 0C */	beq lbl_802AE9DC
/* 802AE9D4  38 60 00 01 */	li r3, 1
/* 802AE9D8  48 00 01 18 */	b lbl_802AEAF0
lbl_802AE9DC:
/* 802AE9DC  38 80 00 01 */	li r4, 1
/* 802AE9E0  98 83 03 CB */	stb r4, 0x3cb(r3)
/* 802AE9E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802AE9E8  80 6D 85 E0 */	lwz r3, __OSReport_disable-0x38(r13)
/* 802AE9EC  38 81 00 0C */	addi r4, r1, 0xc
/* 802AE9F0  4B FF BD ED */	bl stopSoundID__10Z2SoundMgrF10JAISoundID
/* 802AE9F4  80 1F 00 00 */	lwz r0, 0(r31)
/* 802AE9F8  90 01 00 08 */	stw r0, 8(r1)
/* 802AE9FC  80 6D 85 E0 */	lwz r3, __OSReport_disable-0x38(r13)
/* 802AEA00  38 81 00 08 */	addi r4, r1, 8
/* 802AEA04  C0 22 BE A8 */	lfs f1, lit_4052(r2)
/* 802AEA08  4B FF BF E1 */	bl multiVolumeSoundID__10Z2SoundMgrF10JAISoundIDf
/* 802AEA0C  48 00 00 E0 */	b lbl_802AEAEC
lbl_802AEA10:
/* 802AEA10  88 03 03 C6 */	lbz r0, 0x3c6(r3)
/* 802AEA14  28 00 00 00 */	cmplwi r0, 0
/* 802AEA18  41 82 00 0C */	beq lbl_802AEA24
/* 802AEA1C  38 60 00 01 */	li r3, 1
/* 802AEA20  48 00 00 D0 */	b lbl_802AEAF0
lbl_802AEA24:
/* 802AEA24  38 00 00 03 */	li r0, 3
/* 802AEA28  98 03 03 C6 */	stb r0, 0x3c6(r3)
/* 802AEA2C  48 00 00 C0 */	b lbl_802AEAEC
lbl_802AEA30:
/* 802AEA30  88 03 03 C0 */	lbz r0, 0x3c0(r3)
/* 802AEA34  28 00 00 00 */	cmplwi r0, 0
/* 802AEA38  41 82 00 0C */	beq lbl_802AEA44
/* 802AEA3C  38 60 00 01 */	li r3, 1
/* 802AEA40  48 00 00 B0 */	b lbl_802AEAF0
lbl_802AEA44:
/* 802AEA44  38 00 00 03 */	li r0, 3
/* 802AEA48  98 03 03 C0 */	stb r0, 0x3c0(r3)
/* 802AEA4C  48 00 00 A0 */	b lbl_802AEAEC
lbl_802AEA50:
/* 802AEA50  88 03 03 C1 */	lbz r0, 0x3c1(r3)
/* 802AEA54  28 00 00 00 */	cmplwi r0, 0
/* 802AEA58  41 82 00 0C */	beq lbl_802AEA64
/* 802AEA5C  38 60 00 01 */	li r3, 1
/* 802AEA60  48 00 00 90 */	b lbl_802AEAF0
lbl_802AEA64:
/* 802AEA64  38 00 00 03 */	li r0, 3
/* 802AEA68  98 03 03 C1 */	stb r0, 0x3c1(r3)
/* 802AEA6C  48 00 00 80 */	b lbl_802AEAEC
lbl_802AEA70:
/* 802AEA70  88 03 03 C2 */	lbz r0, 0x3c2(r3)
/* 802AEA74  28 00 00 00 */	cmplwi r0, 0
/* 802AEA78  41 82 00 0C */	beq lbl_802AEA84
/* 802AEA7C  38 60 00 01 */	li r3, 1
/* 802AEA80  48 00 00 70 */	b lbl_802AEAF0
lbl_802AEA84:
/* 802AEA84  38 00 00 04 */	li r0, 4
/* 802AEA88  98 03 03 C2 */	stb r0, 0x3c2(r3)
/* 802AEA8C  48 00 00 60 */	b lbl_802AEAEC
lbl_802AEA90:
/* 802AEA90  88 03 03 C3 */	lbz r0, 0x3c3(r3)
/* 802AEA94  28 00 00 00 */	cmplwi r0, 0
/* 802AEA98  41 82 00 0C */	beq lbl_802AEAA4
/* 802AEA9C  38 60 00 01 */	li r3, 1
/* 802AEAA0  48 00 00 50 */	b lbl_802AEAF0
lbl_802AEAA4:
/* 802AEAA4  38 00 00 04 */	li r0, 4
/* 802AEAA8  98 03 03 C3 */	stb r0, 0x3c3(r3)
/* 802AEAAC  48 00 00 40 */	b lbl_802AEAEC
lbl_802AEAB0:
/* 802AEAB0  88 03 03 C7 */	lbz r0, 0x3c7(r3)
/* 802AEAB4  28 00 00 00 */	cmplwi r0, 0
/* 802AEAB8  41 82 00 0C */	beq lbl_802AEAC4
/* 802AEABC  38 60 00 01 */	li r3, 1
/* 802AEAC0  48 00 00 30 */	b lbl_802AEAF0
lbl_802AEAC4:
/* 802AEAC4  38 00 00 01 */	li r0, 1
/* 802AEAC8  98 03 03 C7 */	stb r0, 0x3c7(r3)
/* 802AEACC  48 00 00 20 */	b lbl_802AEAEC
lbl_802AEAD0:
/* 802AEAD0  88 03 03 C8 */	lbz r0, 0x3c8(r3)
/* 802AEAD4  28 00 00 00 */	cmplwi r0, 0
/* 802AEAD8  41 82 00 0C */	beq lbl_802AEAE4
/* 802AEADC  38 60 00 01 */	li r3, 1
/* 802AEAE0  48 00 00 10 */	b lbl_802AEAF0
lbl_802AEAE4:
/* 802AEAE4  38 00 00 01 */	li r0, 1
/* 802AEAE8  98 03 03 C8 */	stb r0, 0x3c8(r3)
lbl_802AEAEC:
/* 802AEAEC  38 60 00 00 */	li r3, 0
lbl_802AEAF0:
/* 802AEAF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802AEAF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802AEAF8  7C 08 03 A6 */	mtlr r0
/* 802AEAFC  38 21 00 20 */	addi r1, r1, 0x20
/* 802AEB00  4E 80 00 20 */	blr 
