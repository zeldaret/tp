lbl_80AB04A8:
/* 80AB04A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AB04AC  7C 08 02 A6 */	mflr r0
/* 80AB04B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AB04B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AB04B8  93 C1 00 08 */	stw r30, 8(r1)
/* 80AB04BC  7C 7F 1B 78 */	mr r31, r3
/* 80AB04C0  A0 03 0E 22 */	lhz r0, 0xe22(r3)
/* 80AB04C4  2C 00 00 02 */	cmpwi r0, 2
/* 80AB04C8  41 82 03 48 */	beq lbl_80AB0810
/* 80AB04CC  40 80 05 94 */	bge lbl_80AB0A60
/* 80AB04D0  2C 00 00 00 */	cmpwi r0, 0
/* 80AB04D4  40 80 00 0C */	bge lbl_80AB04E0
/* 80AB04D8  48 00 05 88 */	b lbl_80AB0A60
/* 80AB04DC  48 00 05 84 */	b lbl_80AB0A60
lbl_80AB04E0:
/* 80AB04E0  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AB04E4  2C 00 00 00 */	cmpwi r0, 0
/* 80AB04E8  40 82 03 28 */	bne lbl_80AB0810
/* 80AB04EC  38 00 00 00 */	li r0, 0
/* 80AB04F0  88 7F 0F 84 */	lbz r3, 0xf84(r31)
/* 80AB04F4  28 03 00 02 */	cmplwi r3, 2
/* 80AB04F8  41 82 00 14 */	beq lbl_80AB050C
/* 80AB04FC  28 03 00 03 */	cmplwi r3, 3
/* 80AB0500  41 82 00 0C */	beq lbl_80AB050C
/* 80AB0504  28 03 00 04 */	cmplwi r3, 4
/* 80AB0508  40 82 00 08 */	bne lbl_80AB0510
lbl_80AB050C:
/* 80AB050C  38 00 00 01 */	li r0, 1
lbl_80AB0510:
/* 80AB0510  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80AB0514  41 82 01 44 */	beq lbl_80AB0658
/* 80AB0518  28 03 00 02 */	cmplwi r3, 2
/* 80AB051C  40 82 00 68 */	bne lbl_80AB0584
/* 80AB0520  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AB0524  2C 00 00 0B */	cmpwi r0, 0xb
/* 80AB0528  41 82 00 28 */	beq lbl_80AB0550
/* 80AB052C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AB0530  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AB0534  4B 69 53 65 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB0538  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AB053C  38 00 00 0B */	li r0, 0xb
/* 80AB0540  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AB0544  3C 60 80 AB */	lis r3, lit_4742@ha /* 0x80AB20D0@ha */
/* 80AB0548  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)  /* 0x80AB20D0@l */
/* 80AB054C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AB0550:
/* 80AB0550  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AB0554  2C 00 00 0F */	cmpwi r0, 0xf
/* 80AB0558  41 82 02 B0 */	beq lbl_80AB0808
/* 80AB055C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AB0560  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AB0564  4B 69 53 35 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB0568  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AB056C  38 00 00 0F */	li r0, 0xf
/* 80AB0570  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AB0574  3C 60 80 AB */	lis r3, lit_4742@ha /* 0x80AB20D0@ha */
/* 80AB0578  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)  /* 0x80AB20D0@l */
/* 80AB057C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AB0580  48 00 02 88 */	b lbl_80AB0808
lbl_80AB0584:
/* 80AB0584  88 1F 0F CE */	lbz r0, 0xfce(r31)
/* 80AB0588  28 00 00 00 */	cmplwi r0, 0
/* 80AB058C  41 82 00 68 */	beq lbl_80AB05F4
/* 80AB0590  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AB0594  2C 00 00 0E */	cmpwi r0, 0xe
/* 80AB0598  41 82 00 28 */	beq lbl_80AB05C0
/* 80AB059C  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AB05A0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AB05A4  4B 69 52 F5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB05A8  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AB05AC  38 00 00 0E */	li r0, 0xe
/* 80AB05B0  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AB05B4  3C 60 80 AB */	lis r3, lit_4742@ha /* 0x80AB20D0@ha */
/* 80AB05B8  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)  /* 0x80AB20D0@l */
/* 80AB05BC  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AB05C0:
/* 80AB05C0  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AB05C4  2C 00 00 08 */	cmpwi r0, 8
/* 80AB05C8  41 82 02 40 */	beq lbl_80AB0808
/* 80AB05CC  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AB05D0  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AB05D4  4B 69 52 C5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB05D8  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AB05DC  38 00 00 08 */	li r0, 8
/* 80AB05E0  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AB05E4  3C 60 80 AB */	lis r3, lit_4742@ha /* 0x80AB20D0@ha */
/* 80AB05E8  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)  /* 0x80AB20D0@l */
/* 80AB05EC  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AB05F0  48 00 02 18 */	b lbl_80AB0808
lbl_80AB05F4:
/* 80AB05F4  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AB05F8  2C 00 00 07 */	cmpwi r0, 7
/* 80AB05FC  41 82 00 28 */	beq lbl_80AB0624
/* 80AB0600  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AB0604  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AB0608  4B 69 52 91 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB060C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AB0610  38 00 00 07 */	li r0, 7
/* 80AB0614  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AB0618  3C 60 80 AB */	lis r3, lit_4742@ha /* 0x80AB20D0@ha */
/* 80AB061C  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)  /* 0x80AB20D0@l */
/* 80AB0620  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AB0624:
/* 80AB0624  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AB0628  2C 00 00 0A */	cmpwi r0, 0xa
/* 80AB062C  41 82 01 DC */	beq lbl_80AB0808
/* 80AB0630  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AB0634  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AB0638  4B 69 52 61 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB063C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AB0640  38 00 00 0A */	li r0, 0xa
/* 80AB0644  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AB0648  3C 60 80 AB */	lis r3, lit_4742@ha /* 0x80AB20D0@ha */
/* 80AB064C  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)  /* 0x80AB20D0@l */
/* 80AB0650  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AB0654  48 00 01 B4 */	b lbl_80AB0808
lbl_80AB0658:
/* 80AB0658  28 03 00 01 */	cmplwi r3, 1
/* 80AB065C  40 82 01 4C */	bne lbl_80AB07A8
/* 80AB0660  88 1F 0F CE */	lbz r0, 0xfce(r31)
/* 80AB0664  28 00 00 00 */	cmplwi r0, 0
/* 80AB0668  41 82 00 68 */	beq lbl_80AB06D0
/* 80AB066C  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AB0670  2C 00 00 06 */	cmpwi r0, 6
/* 80AB0674  41 82 00 28 */	beq lbl_80AB069C
/* 80AB0678  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AB067C  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AB0680  4B 69 52 19 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB0684  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AB0688  38 00 00 06 */	li r0, 6
/* 80AB068C  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AB0690  3C 60 80 AB */	lis r3, lit_4742@ha /* 0x80AB20D0@ha */
/* 80AB0694  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)  /* 0x80AB20D0@l */
/* 80AB0698  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AB069C:
/* 80AB069C  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AB06A0  2C 00 00 01 */	cmpwi r0, 1
/* 80AB06A4  41 82 01 64 */	beq lbl_80AB0808
/* 80AB06A8  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AB06AC  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AB06B0  4B 69 51 E9 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB06B4  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AB06B8  38 00 00 01 */	li r0, 1
/* 80AB06BC  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AB06C0  3C 60 80 AB */	lis r3, lit_4742@ha /* 0x80AB20D0@ha */
/* 80AB06C4  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)  /* 0x80AB20D0@l */
/* 80AB06C8  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AB06CC  48 00 01 3C */	b lbl_80AB0808
lbl_80AB06D0:
/* 80AB06D0  38 60 02 B6 */	li r3, 0x2b6
/* 80AB06D4  4B 69 C3 D9 */	bl daNpcT_chkEvtBit__FUl
/* 80AB06D8  2C 03 00 00 */	cmpwi r3, 0
/* 80AB06DC  41 82 00 68 */	beq lbl_80AB0744
/* 80AB06E0  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AB06E4  2C 00 00 06 */	cmpwi r0, 6
/* 80AB06E8  41 82 00 28 */	beq lbl_80AB0710
/* 80AB06EC  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AB06F0  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AB06F4  4B 69 51 A5 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB06F8  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AB06FC  38 00 00 06 */	li r0, 6
/* 80AB0700  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AB0704  3C 60 80 AB */	lis r3, lit_4742@ha /* 0x80AB20D0@ha */
/* 80AB0708  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)  /* 0x80AB20D0@l */
/* 80AB070C  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AB0710:
/* 80AB0710  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AB0714  2C 00 00 04 */	cmpwi r0, 4
/* 80AB0718  41 82 00 F0 */	beq lbl_80AB0808
/* 80AB071C  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AB0720  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AB0724  4B 69 51 75 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB0728  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AB072C  38 00 00 04 */	li r0, 4
/* 80AB0730  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AB0734  3C 60 80 AB */	lis r3, lit_4742@ha /* 0x80AB20D0@ha */
/* 80AB0738  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)  /* 0x80AB20D0@l */
/* 80AB073C  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AB0740  48 00 00 C8 */	b lbl_80AB0808
lbl_80AB0744:
/* 80AB0744  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AB0748  2C 00 00 11 */	cmpwi r0, 0x11
/* 80AB074C  41 82 00 28 */	beq lbl_80AB0774
/* 80AB0750  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AB0754  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AB0758  4B 69 51 41 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB075C  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AB0760  38 00 00 11 */	li r0, 0x11
/* 80AB0764  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AB0768  3C 60 80 AB */	lis r3, lit_4742@ha /* 0x80AB20D0@ha */
/* 80AB076C  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)  /* 0x80AB20D0@l */
/* 80AB0770  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AB0774:
/* 80AB0774  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AB0778  2C 00 00 00 */	cmpwi r0, 0
/* 80AB077C  41 82 00 8C */	beq lbl_80AB0808
/* 80AB0780  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AB0784  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AB0788  4B 69 51 11 */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB078C  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AB0790  38 00 00 00 */	li r0, 0
/* 80AB0794  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AB0798  3C 60 80 AB */	lis r3, lit_4742@ha /* 0x80AB20D0@ha */
/* 80AB079C  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)  /* 0x80AB20D0@l */
/* 80AB07A0  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
/* 80AB07A4  48 00 00 64 */	b lbl_80AB0808
lbl_80AB07A8:
/* 80AB07A8  80 1F 0B 58 */	lwz r0, 0xb58(r31)
/* 80AB07AC  2C 00 00 11 */	cmpwi r0, 0x11
/* 80AB07B0  41 82 00 28 */	beq lbl_80AB07D8
/* 80AB07B4  83 DF 0B 5C */	lwz r30, 0xb5c(r31)
/* 80AB07B8  38 7F 0B 50 */	addi r3, r31, 0xb50
/* 80AB07BC  4B 69 50 DD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB07C0  93 DF 0B 5C */	stw r30, 0xb5c(r31)
/* 80AB07C4  38 00 00 11 */	li r0, 0x11
/* 80AB07C8  90 1F 0B 58 */	stw r0, 0xb58(r31)
/* 80AB07CC  3C 60 80 AB */	lis r3, lit_4742@ha /* 0x80AB20D0@ha */
/* 80AB07D0  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)  /* 0x80AB20D0@l */
/* 80AB07D4  D0 1F 0B 68 */	stfs f0, 0xb68(r31)
lbl_80AB07D8:
/* 80AB07D8  80 1F 0B 7C */	lwz r0, 0xb7c(r31)
/* 80AB07DC  2C 00 00 00 */	cmpwi r0, 0
/* 80AB07E0  41 82 00 28 */	beq lbl_80AB0808
/* 80AB07E4  83 DF 0B 80 */	lwz r30, 0xb80(r31)
/* 80AB07E8  38 7F 0B 74 */	addi r3, r31, 0xb74
/* 80AB07EC  4B 69 50 AD */	bl initialize__22daNpcT_MotionSeqMngr_cFv
/* 80AB07F0  93 DF 0B 80 */	stw r30, 0xb80(r31)
/* 80AB07F4  38 00 00 00 */	li r0, 0
/* 80AB07F8  90 1F 0B 7C */	stw r0, 0xb7c(r31)
/* 80AB07FC  3C 60 80 AB */	lis r3, lit_4742@ha /* 0x80AB20D0@ha */
/* 80AB0800  C0 03 20 D0 */	lfs f0, lit_4742@l(r3)  /* 0x80AB20D0@l */
/* 80AB0804  D0 1F 0B 8C */	stfs f0, 0xb8c(r31)
lbl_80AB0808:
/* 80AB0808  38 00 00 02 */	li r0, 2
/* 80AB080C  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AB0810:
/* 80AB0810  88 1F 0F CE */	lbz r0, 0xfce(r31)
/* 80AB0814  28 00 00 00 */	cmplwi r0, 0
/* 80AB0818  41 82 00 3C */	beq lbl_80AB0854
/* 80AB081C  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80AB0820  28 00 00 03 */	cmplwi r0, 3
/* 80AB0824  40 82 00 18 */	bne lbl_80AB083C
/* 80AB0828  38 00 00 08 */	li r0, 8
/* 80AB082C  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AB0830  38 00 00 01 */	li r0, 1
/* 80AB0834  98 1F 0E 33 */	stb r0, 0xe33(r31)
/* 80AB0838  48 00 00 1C */	b lbl_80AB0854
lbl_80AB083C:
/* 80AB083C  28 00 00 01 */	cmplwi r0, 1
/* 80AB0840  40 82 00 14 */	bne lbl_80AB0854
/* 80AB0844  38 00 00 06 */	li r0, 6
/* 80AB0848  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AB084C  38 00 00 01 */	li r0, 1
/* 80AB0850  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80AB0854:
/* 80AB0854  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80AB0858  28 00 00 01 */	cmplwi r0, 1
/* 80AB085C  40 82 00 50 */	bne lbl_80AB08AC
/* 80AB0860  38 60 01 C8 */	li r3, 0x1c8
/* 80AB0864  4B 69 C2 49 */	bl daNpcT_chkEvtBit__FUl
/* 80AB0868  2C 03 00 00 */	cmpwi r3, 0
/* 80AB086C  40 82 00 40 */	bne lbl_80AB08AC
/* 80AB0870  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80AB0874  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80AB0878  28 04 00 FF */	cmplwi r4, 0xff
/* 80AB087C  41 82 00 30 */	beq lbl_80AB08AC
/* 80AB0880  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AB0884  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AB0888  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80AB088C  7C 05 07 74 */	extsb r5, r0
/* 80AB0890  4B 58 4A D1 */	bl isSwitch__10dSv_info_cCFii
/* 80AB0894  2C 03 00 00 */	cmpwi r3, 0
/* 80AB0898  41 82 00 14 */	beq lbl_80AB08AC
/* 80AB089C  38 00 00 04 */	li r0, 4
/* 80AB08A0  B0 1F 0E 30 */	sth r0, 0xe30(r31)
/* 80AB08A4  38 00 00 01 */	li r0, 1
/* 80AB08A8  98 1F 0E 33 */	stb r0, 0xe33(r31)
lbl_80AB08AC:
/* 80AB08AC  A8 1F 0D 1C */	lha r0, 0xd1c(r31)
/* 80AB08B0  2C 00 00 00 */	cmpwi r0, 0
/* 80AB08B4  40 82 01 AC */	bne lbl_80AB0A60
/* 80AB08B8  88 1F 0F 84 */	lbz r0, 0xf84(r31)
/* 80AB08BC  28 00 00 01 */	cmplwi r0, 1
/* 80AB08C0  41 82 00 14 */	beq lbl_80AB08D4
/* 80AB08C4  28 00 00 02 */	cmplwi r0, 2
/* 80AB08C8  41 82 00 0C */	beq lbl_80AB08D4
/* 80AB08CC  28 00 00 03 */	cmplwi r0, 3
/* 80AB08D0  40 82 00 0C */	bne lbl_80AB08DC
lbl_80AB08D4:
/* 80AB08D4  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AB08D8  4B 69 4E 25 */	bl remove__18daNpcT_ActorMngr_cFv
lbl_80AB08DC:
/* 80AB08DC  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AB08E0  4B 69 4E 29 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80AB08E4  28 03 00 00 */	cmplwi r3, 0
/* 80AB08E8  41 82 00 D4 */	beq lbl_80AB09BC
/* 80AB08EC  88 1F 0A 89 */	lbz r0, 0xa89(r31)
/* 80AB08F0  28 00 00 00 */	cmplwi r0, 0
/* 80AB08F4  40 82 00 C8 */	bne lbl_80AB09BC
/* 80AB08F8  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AB08FC  2C 00 00 01 */	cmpwi r0, 1
/* 80AB0900  41 82 00 2C */	beq lbl_80AB092C
/* 80AB0904  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AB0908  4B 69 4D F5 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AB090C  38 00 00 00 */	li r0, 0
/* 80AB0910  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AB0914  3C 60 80 AB */	lis r3, lit_4204@ha /* 0x80AB20B8@ha */
/* 80AB0918  C0 03 20 B8 */	lfs f0, lit_4204@l(r3)  /* 0x80AB20B8@l */
/* 80AB091C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AB0920  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB0924  38 00 00 01 */	li r0, 1
/* 80AB0928  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AB092C:
/* 80AB092C  38 00 00 00 */	li r0, 0
/* 80AB0930  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB0934  38 7F 0B 98 */	addi r3, r31, 0xb98
/* 80AB0938  4B 69 4D D1 */	bl getActorP__18daNpcT_ActorMngr_cFv
/* 80AB093C  7C 64 1B 78 */	mr r4, r3
/* 80AB0940  7F E3 FB 78 */	mr r3, r31
/* 80AB0944  C0 3F 0D F8 */	lfs f1, 0xdf8(r31)
/* 80AB0948  A8 BF 0D 7A */	lha r5, 0xd7a(r31)
/* 80AB094C  4B 69 A2 85 */	bl chkActorInSight__8daNpcT_cFP10fopAc_ac_cfs
/* 80AB0950  2C 03 00 00 */	cmpwi r3, 0
/* 80AB0954  40 82 00 3C */	bne lbl_80AB0990
/* 80AB0958  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AB095C  2C 00 00 00 */	cmpwi r0, 0
/* 80AB0960  41 82 00 28 */	beq lbl_80AB0988
/* 80AB0964  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AB0968  4B 69 4D 95 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AB096C  38 00 00 00 */	li r0, 0
/* 80AB0970  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AB0974  3C 60 80 AB */	lis r3, lit_4204@ha /* 0x80AB20B8@ha */
/* 80AB0978  C0 03 20 B8 */	lfs f0, lit_4204@l(r3)  /* 0x80AB20B8@l */
/* 80AB097C  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AB0980  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB0984  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AB0988:
/* 80AB0988  38 00 00 00 */	li r0, 0
/* 80AB098C  98 1F 0C FF */	stb r0, 0xcff(r31)
lbl_80AB0990:
/* 80AB0990  7F E3 FB 78 */	mr r3, r31
/* 80AB0994  4B 69 A9 A5 */	bl srchPlayerActor__8daNpcT_cFv
/* 80AB0998  2C 03 00 00 */	cmpwi r3, 0
/* 80AB099C  40 82 00 C4 */	bne lbl_80AB0A60
/* 80AB09A0  A8 7F 04 B6 */	lha r3, 0x4b6(r31)
/* 80AB09A4  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AB09A8  7C 03 00 00 */	cmpw r3, r0
/* 80AB09AC  40 82 00 B4 */	bne lbl_80AB0A60
/* 80AB09B0  38 00 00 01 */	li r0, 1
/* 80AB09B4  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80AB09B8  48 00 00 A8 */	b lbl_80AB0A60
lbl_80AB09BC:
/* 80AB09BC  80 1F 0C E0 */	lwz r0, 0xce0(r31)
/* 80AB09C0  2C 00 00 00 */	cmpwi r0, 0
/* 80AB09C4  41 82 00 28 */	beq lbl_80AB09EC
/* 80AB09C8  38 7F 0B A8 */	addi r3, r31, 0xba8
/* 80AB09CC  4B 69 4D 31 */	bl remove__18daNpcT_ActorMngr_cFv
/* 80AB09D0  38 00 00 00 */	li r0, 0
/* 80AB09D4  90 1F 0B C8 */	stw r0, 0xbc8(r31)
/* 80AB09D8  3C 60 80 AB */	lis r3, lit_4204@ha /* 0x80AB20B8@ha */
/* 80AB09DC  C0 03 20 B8 */	lfs f0, lit_4204@l(r3)  /* 0x80AB20B8@l */
/* 80AB09E0  D0 1F 0C F4 */	stfs f0, 0xcf4(r31)
/* 80AB09E4  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB09E8  90 1F 0C E0 */	stw r0, 0xce0(r31)
lbl_80AB09EC:
/* 80AB09EC  38 00 00 00 */	li r0, 0
/* 80AB09F0  98 1F 0C FF */	stb r0, 0xcff(r31)
/* 80AB09F4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80AB09F8  A8 1F 0D 7A */	lha r0, 0xd7a(r31)
/* 80AB09FC  7C 04 00 00 */	cmpw r4, r0
/* 80AB0A00  41 82 00 58 */	beq lbl_80AB0A58
/* 80AB0A04  88 1F 0E 34 */	lbz r0, 0xe34(r31)
/* 80AB0A08  28 00 00 00 */	cmplwi r0, 0
/* 80AB0A0C  41 82 00 30 */	beq lbl_80AB0A3C
/* 80AB0A10  7F E3 FB 78 */	mr r3, r31
/* 80AB0A14  38 A0 FF FF */	li r5, -1
/* 80AB0A18  38 C0 FF FF */	li r6, -1
/* 80AB0A1C  38 E0 00 0F */	li r7, 0xf
/* 80AB0A20  39 00 00 00 */	li r8, 0
/* 80AB0A24  4B 69 AC 25 */	bl step__8daNpcT_cFsiiii
/* 80AB0A28  2C 03 00 00 */	cmpwi r3, 0
/* 80AB0A2C  41 82 00 20 */	beq lbl_80AB0A4C
/* 80AB0A30  38 00 00 01 */	li r0, 1
/* 80AB0A34  B0 1F 0E 22 */	sth r0, 0xe22(r31)
/* 80AB0A38  48 00 00 14 */	b lbl_80AB0A4C
lbl_80AB0A3C:
/* 80AB0A3C  7F E3 FB 78 */	mr r3, r31
/* 80AB0A40  4B 69 9F D9 */	bl setAngle__8daNpcT_cFs
/* 80AB0A44  38 00 00 01 */	li r0, 1
/* 80AB0A48  B0 1F 0E 22 */	sth r0, 0xe22(r31)
lbl_80AB0A4C:
/* 80AB0A4C  38 00 00 00 */	li r0, 0
/* 80AB0A50  90 1F 05 5C */	stw r0, 0x55c(r31)
/* 80AB0A54  48 00 00 0C */	b lbl_80AB0A60
lbl_80AB0A58:
/* 80AB0A58  7F E3 FB 78 */	mr r3, r31
/* 80AB0A5C  4B 69 A8 DD */	bl srchPlayerActor__8daNpcT_cFv
lbl_80AB0A60:
/* 80AB0A60  38 60 00 01 */	li r3, 1
/* 80AB0A64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AB0A68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AB0A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AB0A70  7C 08 03 A6 */	mtlr r0
/* 80AB0A74  38 21 00 10 */	addi r1, r1, 0x10
/* 80AB0A78  4E 80 00 20 */	blr 
