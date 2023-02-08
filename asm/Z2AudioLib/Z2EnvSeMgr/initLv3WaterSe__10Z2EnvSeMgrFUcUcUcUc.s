lbl_802C950C:
/* 802C950C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 802C9510  7C 08 02 A6 */	mflr r0
/* 802C9514  90 01 00 34 */	stw r0, 0x34(r1)
/* 802C9518  39 61 00 30 */	addi r11, r1, 0x30
/* 802C951C  48 09 8C B9 */	bl _savegpr_27
/* 802C9520  7C 7B 1B 78 */	mr r27, r3
/* 802C9524  7C 9C 23 78 */	mr r28, r4
/* 802C9528  7C BD 2B 78 */	mr r29, r5
/* 802C952C  7C DE 33 78 */	mr r30, r6
/* 802C9530  7C FF 3B 78 */	mr r31, r7
/* 802C9534  54 83 06 3E */	clrlwi r3, r4, 0x18
/* 802C9538  38 03 FF 92 */	addi r0, r3, -110
/* 802C953C  28 00 00 09 */	cmplwi r0, 9
/* 802C9540  41 81 05 B0 */	bgt lbl_802C9AF0
/* 802C9544  3C 60 80 3D */	lis r3, lit_5074@ha /* 0x803CBBC8@ha */
/* 802C9548  38 63 BB C8 */	addi r3, r3, lit_5074@l /* 0x803CBBC8@l */
/* 802C954C  54 00 10 3A */	slwi r0, r0, 2
/* 802C9550  7C 03 00 2E */	lwzx r0, r3, r0
/* 802C9554  7C 09 03 A6 */	mtctr r0
/* 802C9558  4E 80 04 20 */	bctr 
/* 802C955C  9B 9B 02 48 */	stb r28, 0x248(r27)
/* 802C9560  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802C9564  28 00 00 64 */	cmplwi r0, 0x64
/* 802C9568  41 80 00 10 */	blt lbl_802C9578
/* 802C956C  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C9570  D0 1B 02 4C */	stfs f0, 0x24c(r27)
/* 802C9574  48 00 00 28 */	b lbl_802C959C
lbl_802C9578:
/* 802C9578  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C957C  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C9580  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C9584  3C 00 43 30 */	lis r0, 0x4330
/* 802C9588  90 01 00 08 */	stw r0, 8(r1)
/* 802C958C  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C9590  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C9594  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C9598  D0 1B 02 4C */	stfs f0, 0x24c(r27)
lbl_802C959C:
/* 802C959C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802C95A0  28 00 00 FF */	cmplwi r0, 0xff
/* 802C95A4  40 82 00 10 */	bne lbl_802C95B4
/* 802C95A8  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C95AC  D0 1B 02 50 */	stfs f0, 0x250(r27)
/* 802C95B0  48 00 00 28 */	b lbl_802C95D8
lbl_802C95B4:
/* 802C95B4  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C95B8  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C95BC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C95C0  3C 00 43 30 */	lis r0, 0x4330
/* 802C95C4  90 01 00 08 */	stw r0, 8(r1)
/* 802C95C8  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C95CC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C95D0  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C95D4  D0 1B 02 50 */	stfs f0, 0x250(r27)
lbl_802C95D8:
/* 802C95D8  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802C95DC  28 00 00 FF */	cmplwi r0, 0xff
/* 802C95E0  40 82 00 10 */	bne lbl_802C95F0
/* 802C95E4  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C95E8  D0 1B 02 54 */	stfs f0, 0x254(r27)
/* 802C95EC  48 00 00 28 */	b lbl_802C9614
lbl_802C95F0:
/* 802C95F0  C0 42 C3 50 */	lfs f2, lit_3505(r2)
/* 802C95F4  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C95F8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C95FC  3C 00 43 30 */	lis r0, 0x4330
/* 802C9600  90 01 00 08 */	stw r0, 8(r1)
/* 802C9604  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C9608  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C960C  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C9610  D0 1B 02 54 */	stfs f0, 0x254(r27)
lbl_802C9614:
/* 802C9614  C0 22 C3 70 */	lfs f1, lit_3704(r2)
/* 802C9618  C0 1B 02 54 */	lfs f0, 0x254(r27)
/* 802C961C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C9620  D0 1B 02 24 */	stfs f0, 0x224(r27)
/* 802C9624  48 00 09 1C */	b lbl_802C9F40
/* 802C9628  9B 9B 02 48 */	stb r28, 0x248(r27)
/* 802C962C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802C9630  28 00 00 64 */	cmplwi r0, 0x64
/* 802C9634  41 80 00 10 */	blt lbl_802C9644
/* 802C9638  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C963C  D0 1B 02 4C */	stfs f0, 0x24c(r27)
/* 802C9640  48 00 00 28 */	b lbl_802C9668
lbl_802C9644:
/* 802C9644  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C9648  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C964C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C9650  3C 00 43 30 */	lis r0, 0x4330
/* 802C9654  90 01 00 08 */	stw r0, 8(r1)
/* 802C9658  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C965C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C9660  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C9664  D0 1B 02 4C */	stfs f0, 0x24c(r27)
lbl_802C9668:
/* 802C9668  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802C966C  28 00 00 FF */	cmplwi r0, 0xff
/* 802C9670  40 82 00 10 */	bne lbl_802C9680
/* 802C9674  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C9678  D0 1B 02 50 */	stfs f0, 0x250(r27)
/* 802C967C  48 00 00 28 */	b lbl_802C96A4
lbl_802C9680:
/* 802C9680  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C9684  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C9688  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C968C  3C 00 43 30 */	lis r0, 0x4330
/* 802C9690  90 01 00 08 */	stw r0, 8(r1)
/* 802C9694  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C9698  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C969C  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C96A0  D0 1B 02 50 */	stfs f0, 0x250(r27)
lbl_802C96A4:
/* 802C96A4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802C96A8  28 00 00 FF */	cmplwi r0, 0xff
/* 802C96AC  40 82 00 10 */	bne lbl_802C96BC
/* 802C96B0  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C96B4  D0 1B 02 54 */	stfs f0, 0x254(r27)
/* 802C96B8  48 00 00 28 */	b lbl_802C96E0
lbl_802C96BC:
/* 802C96BC  C0 42 C3 50 */	lfs f2, lit_3505(r2)
/* 802C96C0  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C96C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C96C8  3C 00 43 30 */	lis r0, 0x4330
/* 802C96CC  90 01 00 08 */	stw r0, 8(r1)
/* 802C96D0  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C96D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C96D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C96DC  D0 1B 02 54 */	stfs f0, 0x254(r27)
lbl_802C96E0:
/* 802C96E0  C0 22 C4 30 */	lfs f1, lit_4510(r2)
/* 802C96E4  C0 1B 02 54 */	lfs f0, 0x254(r27)
/* 802C96E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C96EC  D0 1B 02 24 */	stfs f0, 0x224(r27)
/* 802C96F0  48 00 08 50 */	b lbl_802C9F40
/* 802C96F4  9B 9B 02 7C */	stb r28, 0x27c(r27)
/* 802C96F8  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802C96FC  28 00 00 64 */	cmplwi r0, 0x64
/* 802C9700  41 80 00 10 */	blt lbl_802C9710
/* 802C9704  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C9708  D0 1B 02 80 */	stfs f0, 0x280(r27)
/* 802C970C  48 00 00 28 */	b lbl_802C9734
lbl_802C9710:
/* 802C9710  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C9714  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C9718  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C971C  3C 00 43 30 */	lis r0, 0x4330
/* 802C9720  90 01 00 08 */	stw r0, 8(r1)
/* 802C9724  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C9728  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C972C  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C9730  D0 1B 02 80 */	stfs f0, 0x280(r27)
lbl_802C9734:
/* 802C9734  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802C9738  28 00 00 FF */	cmplwi r0, 0xff
/* 802C973C  40 82 00 10 */	bne lbl_802C974C
/* 802C9740  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C9744  D0 1B 02 84 */	stfs f0, 0x284(r27)
/* 802C9748  48 00 00 28 */	b lbl_802C9770
lbl_802C974C:
/* 802C974C  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C9750  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C9754  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C9758  3C 00 43 30 */	lis r0, 0x4330
/* 802C975C  90 01 00 08 */	stw r0, 8(r1)
/* 802C9760  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C9764  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C9768  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C976C  D0 1B 02 84 */	stfs f0, 0x284(r27)
lbl_802C9770:
/* 802C9770  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802C9774  28 00 00 FF */	cmplwi r0, 0xff
/* 802C9778  40 82 00 10 */	bne lbl_802C9788
/* 802C977C  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C9780  D0 1B 02 88 */	stfs f0, 0x288(r27)
/* 802C9784  48 00 00 28 */	b lbl_802C97AC
lbl_802C9788:
/* 802C9788  C0 42 C3 50 */	lfs f2, lit_3505(r2)
/* 802C978C  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C9790  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C9794  3C 00 43 30 */	lis r0, 0x4330
/* 802C9798  90 01 00 08 */	stw r0, 8(r1)
/* 802C979C  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C97A0  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C97A4  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C97A8  D0 1B 02 88 */	stfs f0, 0x288(r27)
lbl_802C97AC:
/* 802C97AC  C0 22 C3 70 */	lfs f1, lit_3704(r2)
/* 802C97B0  C0 1B 02 88 */	lfs f0, 0x288(r27)
/* 802C97B4  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C97B8  D0 1B 02 58 */	stfs f0, 0x258(r27)
/* 802C97BC  48 00 07 84 */	b lbl_802C9F40
/* 802C97C0  9B 9B 02 7C */	stb r28, 0x27c(r27)
/* 802C97C4  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802C97C8  28 00 00 64 */	cmplwi r0, 0x64
/* 802C97CC  41 80 00 10 */	blt lbl_802C97DC
/* 802C97D0  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C97D4  D0 1B 02 80 */	stfs f0, 0x280(r27)
/* 802C97D8  48 00 00 28 */	b lbl_802C9800
lbl_802C97DC:
/* 802C97DC  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C97E0  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C97E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C97E8  3C 00 43 30 */	lis r0, 0x4330
/* 802C97EC  90 01 00 08 */	stw r0, 8(r1)
/* 802C97F0  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C97F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C97F8  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C97FC  D0 1B 02 80 */	stfs f0, 0x280(r27)
lbl_802C9800:
/* 802C9800  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802C9804  28 00 00 FF */	cmplwi r0, 0xff
/* 802C9808  40 82 00 10 */	bne lbl_802C9818
/* 802C980C  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C9810  D0 1B 02 84 */	stfs f0, 0x284(r27)
/* 802C9814  48 00 00 28 */	b lbl_802C983C
lbl_802C9818:
/* 802C9818  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C981C  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C9820  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C9824  3C 00 43 30 */	lis r0, 0x4330
/* 802C9828  90 01 00 08 */	stw r0, 8(r1)
/* 802C982C  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C9830  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C9834  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C9838  D0 1B 02 84 */	stfs f0, 0x284(r27)
lbl_802C983C:
/* 802C983C  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802C9840  28 00 00 FF */	cmplwi r0, 0xff
/* 802C9844  40 82 00 10 */	bne lbl_802C9854
/* 802C9848  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C984C  D0 1B 02 88 */	stfs f0, 0x288(r27)
/* 802C9850  48 00 00 28 */	b lbl_802C9878
lbl_802C9854:
/* 802C9854  C0 42 C3 50 */	lfs f2, lit_3505(r2)
/* 802C9858  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C985C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C9860  3C 00 43 30 */	lis r0, 0x4330
/* 802C9864  90 01 00 08 */	stw r0, 8(r1)
/* 802C9868  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C986C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C9870  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C9874  D0 1B 02 88 */	stfs f0, 0x288(r27)
lbl_802C9878:
/* 802C9878  C0 22 C4 30 */	lfs f1, lit_4510(r2)
/* 802C987C  C0 1B 02 88 */	lfs f0, 0x288(r27)
/* 802C9880  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C9884  D0 1B 02 58 */	stfs f0, 0x258(r27)
/* 802C9888  48 00 06 B8 */	b lbl_802C9F40
/* 802C988C  9B 9B 02 B0 */	stb r28, 0x2b0(r27)
/* 802C9890  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802C9894  28 00 00 64 */	cmplwi r0, 0x64
/* 802C9898  41 80 00 10 */	blt lbl_802C98A8
/* 802C989C  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C98A0  D0 1B 02 B4 */	stfs f0, 0x2b4(r27)
/* 802C98A4  48 00 00 28 */	b lbl_802C98CC
lbl_802C98A8:
/* 802C98A8  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C98AC  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C98B0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C98B4  3C 00 43 30 */	lis r0, 0x4330
/* 802C98B8  90 01 00 08 */	stw r0, 8(r1)
/* 802C98BC  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C98C0  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C98C4  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C98C8  D0 1B 02 B4 */	stfs f0, 0x2b4(r27)
lbl_802C98CC:
/* 802C98CC  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802C98D0  28 00 00 FF */	cmplwi r0, 0xff
/* 802C98D4  40 82 00 10 */	bne lbl_802C98E4
/* 802C98D8  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C98DC  D0 1B 02 B8 */	stfs f0, 0x2b8(r27)
/* 802C98E0  48 00 00 28 */	b lbl_802C9908
lbl_802C98E4:
/* 802C98E4  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C98E8  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C98EC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C98F0  3C 00 43 30 */	lis r0, 0x4330
/* 802C98F4  90 01 00 08 */	stw r0, 8(r1)
/* 802C98F8  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C98FC  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C9900  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C9904  D0 1B 02 B8 */	stfs f0, 0x2b8(r27)
lbl_802C9908:
/* 802C9908  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802C990C  28 00 00 FF */	cmplwi r0, 0xff
/* 802C9910  40 82 00 10 */	bne lbl_802C9920
/* 802C9914  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C9918  D0 1B 02 BC */	stfs f0, 0x2bc(r27)
/* 802C991C  48 00 00 28 */	b lbl_802C9944
lbl_802C9920:
/* 802C9920  C0 42 C3 50 */	lfs f2, lit_3505(r2)
/* 802C9924  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C9928  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C992C  3C 00 43 30 */	lis r0, 0x4330
/* 802C9930  90 01 00 08 */	stw r0, 8(r1)
/* 802C9934  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C9938  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C993C  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C9940  D0 1B 02 BC */	stfs f0, 0x2bc(r27)
lbl_802C9944:
/* 802C9944  C0 22 C3 70 */	lfs f1, lit_3704(r2)
/* 802C9948  C0 1B 02 BC */	lfs f0, 0x2bc(r27)
/* 802C994C  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C9950  D0 1B 02 8C */	stfs f0, 0x28c(r27)
/* 802C9954  48 00 05 EC */	b lbl_802C9F40
/* 802C9958  9B 9B 02 B0 */	stb r28, 0x2b0(r27)
/* 802C995C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802C9960  28 00 00 64 */	cmplwi r0, 0x64
/* 802C9964  41 80 00 10 */	blt lbl_802C9974
/* 802C9968  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C996C  D0 1B 02 B4 */	stfs f0, 0x2b4(r27)
/* 802C9970  48 00 00 28 */	b lbl_802C9998
lbl_802C9974:
/* 802C9974  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C9978  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C997C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C9980  3C 00 43 30 */	lis r0, 0x4330
/* 802C9984  90 01 00 08 */	stw r0, 8(r1)
/* 802C9988  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C998C  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C9990  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C9994  D0 1B 02 B4 */	stfs f0, 0x2b4(r27)
lbl_802C9998:
/* 802C9998  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802C999C  28 00 00 FF */	cmplwi r0, 0xff
/* 802C99A0  40 82 00 10 */	bne lbl_802C99B0
/* 802C99A4  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C99A8  D0 1B 02 B8 */	stfs f0, 0x2b8(r27)
/* 802C99AC  48 00 00 28 */	b lbl_802C99D4
lbl_802C99B0:
/* 802C99B0  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C99B4  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C99B8  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C99BC  3C 00 43 30 */	lis r0, 0x4330
/* 802C99C0  90 01 00 08 */	stw r0, 8(r1)
/* 802C99C4  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C99C8  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C99CC  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C99D0  D0 1B 02 B8 */	stfs f0, 0x2b8(r27)
lbl_802C99D4:
/* 802C99D4  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802C99D8  28 00 00 FF */	cmplwi r0, 0xff
/* 802C99DC  40 82 00 10 */	bne lbl_802C99EC
/* 802C99E0  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C99E4  D0 1B 02 BC */	stfs f0, 0x2bc(r27)
/* 802C99E8  48 00 00 28 */	b lbl_802C9A10
lbl_802C99EC:
/* 802C99EC  C0 42 C3 50 */	lfs f2, lit_3505(r2)
/* 802C99F0  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C99F4  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C99F8  3C 00 43 30 */	lis r0, 0x4330
/* 802C99FC  90 01 00 08 */	stw r0, 8(r1)
/* 802C9A00  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C9A04  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C9A08  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C9A0C  D0 1B 02 BC */	stfs f0, 0x2bc(r27)
lbl_802C9A10:
/* 802C9A10  C0 22 C4 30 */	lfs f1, lit_4510(r2)
/* 802C9A14  C0 1B 02 BC */	lfs f0, 0x2bc(r27)
/* 802C9A18  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C9A1C  D0 1B 02 8C */	stfs f0, 0x28c(r27)
/* 802C9A20  48 00 05 20 */	b lbl_802C9F40
/* 802C9A24  9B 9B 02 B0 */	stb r28, 0x2b0(r27)
/* 802C9A28  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 802C9A2C  28 00 00 64 */	cmplwi r0, 0x64
/* 802C9A30  41 80 00 10 */	blt lbl_802C9A40
/* 802C9A34  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C9A38  D0 1B 02 B4 */	stfs f0, 0x2b4(r27)
/* 802C9A3C  48 00 00 28 */	b lbl_802C9A64
lbl_802C9A40:
/* 802C9A40  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C9A44  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C9A48  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C9A4C  3C 00 43 30 */	lis r0, 0x4330
/* 802C9A50  90 01 00 08 */	stw r0, 8(r1)
/* 802C9A54  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C9A58  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C9A5C  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C9A60  D0 1B 02 B4 */	stfs f0, 0x2b4(r27)
lbl_802C9A64:
/* 802C9A64  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802C9A68  28 00 00 FF */	cmplwi r0, 0xff
/* 802C9A6C  40 82 00 10 */	bne lbl_802C9A7C
/* 802C9A70  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C9A74  D0 1B 02 B8 */	stfs f0, 0x2b8(r27)
/* 802C9A78  48 00 00 28 */	b lbl_802C9AA0
lbl_802C9A7C:
/* 802C9A7C  C0 42 C3 78 */	lfs f2, lit_3749(r2)
/* 802C9A80  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C9A84  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C9A88  3C 00 43 30 */	lis r0, 0x4330
/* 802C9A8C  90 01 00 08 */	stw r0, 8(r1)
/* 802C9A90  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C9A94  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C9A98  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C9A9C  D0 1B 02 B8 */	stfs f0, 0x2b8(r27)
lbl_802C9AA0:
/* 802C9AA0  57 E0 06 3E */	clrlwi r0, r31, 0x18
/* 802C9AA4  28 00 00 FF */	cmplwi r0, 0xff
/* 802C9AA8  40 82 00 10 */	bne lbl_802C9AB8
/* 802C9AAC  C0 02 C3 44 */	lfs f0, lit_3502(r2)
/* 802C9AB0  D0 1B 02 BC */	stfs f0, 0x2bc(r27)
/* 802C9AB4  48 00 00 28 */	b lbl_802C9ADC
lbl_802C9AB8:
/* 802C9AB8  C0 42 C3 50 */	lfs f2, lit_3505(r2)
/* 802C9ABC  C8 22 C3 58 */	lfd f1, lit_3508(r2)
/* 802C9AC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C9AC4  3C 00 43 30 */	lis r0, 0x4330
/* 802C9AC8  90 01 00 08 */	stw r0, 8(r1)
/* 802C9ACC  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C9AD0  EC 00 08 28 */	fsubs f0, f0, f1
/* 802C9AD4  EC 02 00 32 */	fmuls f0, f2, f0
/* 802C9AD8  D0 1B 02 BC */	stfs f0, 0x2bc(r27)
lbl_802C9ADC:
/* 802C9ADC  C0 22 C4 34 */	lfs f1, lit_4511(r2)
/* 802C9AE0  C0 1B 02 BC */	lfs f0, 0x2bc(r27)
/* 802C9AE4  EC 01 00 32 */	fmuls f0, f1, f0
/* 802C9AE8  D0 1B 02 8C */	stfs f0, 0x28c(r27)
/* 802C9AEC  48 00 04 54 */	b lbl_802C9F40
lbl_802C9AF0:
/* 802C9AF0  80 6D 86 00 */	lwz r3, data_80450B80(r13)
/* 802C9AF4  80 03 00 04 */	lwz r0, 4(r3)
/* 802C9AF8  2C 00 00 2E */	cmpwi r0, 0x2e
/* 802C9AFC  40 82 04 44 */	bne lbl_802C9F40
/* 802C9B00  88 03 00 0C */	lbz r0, 0xc(r3)
/* 802C9B04  7C 00 07 74 */	extsb r0, r0
/* 802C9B08  28 00 00 0D */	cmplwi r0, 0xd
/* 802C9B0C  41 81 04 34 */	bgt lbl_802C9F40
/* 802C9B10  3C 60 80 3D */	lis r3, lit_5076@ha /* 0x803CBB90@ha */
/* 802C9B14  38 63 BB 90 */	addi r3, r3, lit_5076@l /* 0x803CBB90@l */
/* 802C9B18  54 00 10 3A */	slwi r0, r0, 2
/* 802C9B1C  7C 03 00 2E */	lwzx r0, r3, r0
/* 802C9B20  7C 09 03 A6 */	mtctr r0
/* 802C9B24  4E 80 04 20 */	bctr 
/* 802C9B28  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 802C9B2C  28 00 00 6B */	cmplwi r0, 0x6b
/* 802C9B30  40 82 00 1C */	bne lbl_802C9B4C
/* 802C9B34  7F 63 DB 78 */	mr r3, r27
/* 802C9B38  38 80 00 09 */	li r4, 9
/* 802C9B3C  7F A5 EB 78 */	mr r5, r29
/* 802C9B40  38 C0 00 82 */	li r6, 0x82
/* 802C9B44  38 E0 00 05 */	li r7, 5
/* 802C9B48  4B FF EB E9 */	bl initFallSe__10Z2EnvSeMgrFUcUcUcUc
lbl_802C9B4C:
/* 802C9B4C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 802C9B50  28 00 00 64 */	cmplwi r0, 0x64
/* 802C9B54  40 82 03 EC */	bne lbl_802C9F40
/* 802C9B58  7F 63 DB 78 */	mr r3, r27
/* 802C9B5C  38 80 00 1E */	li r4, 0x1e
/* 802C9B60  7F A5 EB 78 */	mr r5, r29
/* 802C9B64  7F C6 F3 78 */	mr r6, r30
/* 802C9B68  7F E7 FB 78 */	mr r7, r31
/* 802C9B6C  4B FF EF 25 */	bl initEtcSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9B70  48 00 03 D0 */	b lbl_802C9F40
/* 802C9B74  57 83 06 3E */	clrlwi r3, r28, 0x18
/* 802C9B78  28 03 00 64 */	cmplwi r3, 0x64
/* 802C9B7C  40 82 00 20 */	bne lbl_802C9B9C
/* 802C9B80  7F 63 DB 78 */	mr r3, r27
/* 802C9B84  38 80 00 1F */	li r4, 0x1f
/* 802C9B88  7F A5 EB 78 */	mr r5, r29
/* 802C9B8C  7F C6 F3 78 */	mr r6, r30
/* 802C9B90  38 E0 00 14 */	li r7, 0x14
/* 802C9B94  4B FF EE FD */	bl initEtcSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9B98  48 00 03 A8 */	b lbl_802C9F40
lbl_802C9B9C:
/* 802C9B9C  38 1C FF 99 */	addi r0, r28, -103
/* 802C9BA0  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802C9BA4  28 00 00 02 */	cmplwi r0, 2
/* 802C9BA8  40 81 00 0C */	ble lbl_802C9BB4
/* 802C9BAC  28 03 00 6A */	cmplwi r3, 0x6a
/* 802C9BB0  40 82 03 90 */	bne lbl_802C9F40
lbl_802C9BB4:
/* 802C9BB4  7F 63 DB 78 */	mr r3, r27
/* 802C9BB8  38 80 00 73 */	li r4, 0x73
/* 802C9BBC  7F A5 EB 78 */	mr r5, r29
/* 802C9BC0  7F C6 F3 78 */	mr r6, r30
/* 802C9BC4  7F E7 FB 78 */	mr r7, r31
/* 802C9BC8  4B FF F9 45 */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9BCC  48 00 03 74 */	b lbl_802C9F40
/* 802C9BD0  38 1C FF 9C */	addi r0, r28, -100
/* 802C9BD4  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 802C9BD8  28 00 00 01 */	cmplwi r0, 1
/* 802C9BDC  40 81 00 10 */	ble lbl_802C9BEC
/* 802C9BE0  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 802C9BE4  28 00 00 66 */	cmplwi r0, 0x66
/* 802C9BE8  40 82 00 20 */	bne lbl_802C9C08
lbl_802C9BEC:
/* 802C9BEC  7F 63 DB 78 */	mr r3, r27
/* 802C9BF0  38 80 00 1E */	li r4, 0x1e
/* 802C9BF4  7F A5 EB 78 */	mr r5, r29
/* 802C9BF8  7F C6 F3 78 */	mr r6, r30
/* 802C9BFC  7F E7 FB 78 */	mr r7, r31
/* 802C9C00  4B FF EE 91 */	bl initEtcSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9C04  48 00 03 3C */	b lbl_802C9F40
lbl_802C9C08:
/* 802C9C08  28 00 00 67 */	cmplwi r0, 0x67
/* 802C9C0C  41 82 00 0C */	beq lbl_802C9C18
/* 802C9C10  28 00 00 68 */	cmplwi r0, 0x68
/* 802C9C14  40 82 00 20 */	bne lbl_802C9C34
lbl_802C9C18:
/* 802C9C18  7F 63 DB 78 */	mr r3, r27
/* 802C9C1C  38 80 00 73 */	li r4, 0x73
/* 802C9C20  7F A5 EB 78 */	mr r5, r29
/* 802C9C24  7F C6 F3 78 */	mr r6, r30
/* 802C9C28  7F E7 FB 78 */	mr r7, r31
/* 802C9C2C  4B FF F8 E1 */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9C30  48 00 03 10 */	b lbl_802C9F40
lbl_802C9C34:
/* 802C9C34  28 00 00 69 */	cmplwi r0, 0x69
/* 802C9C38  41 82 00 0C */	beq lbl_802C9C44
/* 802C9C3C  28 00 00 6A */	cmplwi r0, 0x6a
/* 802C9C40  40 82 00 20 */	bne lbl_802C9C60
lbl_802C9C44:
/* 802C9C44  7F 63 DB 78 */	mr r3, r27
/* 802C9C48  38 80 00 75 */	li r4, 0x75
/* 802C9C4C  7F A5 EB 78 */	mr r5, r29
/* 802C9C50  7F C6 F3 78 */	mr r6, r30
/* 802C9C54  7F E7 FB 78 */	mr r7, r31
/* 802C9C58  4B FF F8 B5 */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9C5C  48 00 02 E4 */	b lbl_802C9F40
lbl_802C9C60:
/* 802C9C60  28 00 00 6B */	cmplwi r0, 0x6b
/* 802C9C64  41 82 00 0C */	beq lbl_802C9C70
/* 802C9C68  28 00 00 6C */	cmplwi r0, 0x6c
/* 802C9C6C  40 82 02 D4 */	bne lbl_802C9F40
lbl_802C9C70:
/* 802C9C70  7F 63 DB 78 */	mr r3, r27
/* 802C9C74  38 80 00 6F */	li r4, 0x6f
/* 802C9C78  7F A5 EB 78 */	mr r5, r29
/* 802C9C7C  7F C6 F3 78 */	mr r6, r30
/* 802C9C80  38 E0 00 0F */	li r7, 0xf
/* 802C9C84  4B FF F8 89 */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9C88  48 00 02 B8 */	b lbl_802C9F40
/* 802C9C8C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 802C9C90  28 00 00 67 */	cmplwi r0, 0x67
/* 802C9C94  40 82 00 20 */	bne lbl_802C9CB4
/* 802C9C98  7F 63 DB 78 */	mr r3, r27
/* 802C9C9C  38 80 00 73 */	li r4, 0x73
/* 802C9CA0  7F A5 EB 78 */	mr r5, r29
/* 802C9CA4  7F C6 F3 78 */	mr r6, r30
/* 802C9CA8  7F E7 FB 78 */	mr r7, r31
/* 802C9CAC  4B FF F8 61 */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9CB0  48 00 02 90 */	b lbl_802C9F40
lbl_802C9CB4:
/* 802C9CB4  28 00 00 6B */	cmplwi r0, 0x6b
/* 802C9CB8  40 82 02 88 */	bne lbl_802C9F40
/* 802C9CBC  7F 63 DB 78 */	mr r3, r27
/* 802C9CC0  38 80 00 09 */	li r4, 9
/* 802C9CC4  7F A5 EB 78 */	mr r5, r29
/* 802C9CC8  38 C0 00 82 */	li r6, 0x82
/* 802C9CCC  7F E7 FB 78 */	mr r7, r31
/* 802C9CD0  4B FF EA 61 */	bl initFallSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9CD4  48 00 02 6C */	b lbl_802C9F40
/* 802C9CD8  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 802C9CDC  28 00 00 64 */	cmplwi r0, 0x64
/* 802C9CE0  41 82 00 0C */	beq lbl_802C9CEC
/* 802C9CE4  28 00 00 65 */	cmplwi r0, 0x65
/* 802C9CE8  40 82 00 20 */	bne lbl_802C9D08
lbl_802C9CEC:
/* 802C9CEC  7F 63 DB 78 */	mr r3, r27
/* 802C9CF0  38 80 00 1E */	li r4, 0x1e
/* 802C9CF4  7F A5 EB 78 */	mr r5, r29
/* 802C9CF8  7F C6 F3 78 */	mr r6, r30
/* 802C9CFC  7F E7 FB 78 */	mr r7, r31
/* 802C9D00  4B FF ED 91 */	bl initEtcSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9D04  48 00 02 3C */	b lbl_802C9F40
lbl_802C9D08:
/* 802C9D08  28 00 00 67 */	cmplwi r0, 0x67
/* 802C9D0C  40 82 00 20 */	bne lbl_802C9D2C
/* 802C9D10  7F 63 DB 78 */	mr r3, r27
/* 802C9D14  38 80 00 73 */	li r4, 0x73
/* 802C9D18  7F A5 EB 78 */	mr r5, r29
/* 802C9D1C  7F C6 F3 78 */	mr r6, r30
/* 802C9D20  7F E7 FB 78 */	mr r7, r31
/* 802C9D24  4B FF F7 E9 */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9D28  48 00 02 18 */	b lbl_802C9F40
lbl_802C9D2C:
/* 802C9D2C  28 00 00 6B */	cmplwi r0, 0x6b
/* 802C9D30  40 82 02 10 */	bne lbl_802C9F40
/* 802C9D34  7F 63 DB 78 */	mr r3, r27
/* 802C9D38  38 80 00 6F */	li r4, 0x6f
/* 802C9D3C  7F A5 EB 78 */	mr r5, r29
/* 802C9D40  7F C6 F3 78 */	mr r6, r30
/* 802C9D44  7F E7 FB 78 */	mr r7, r31
/* 802C9D48  4B FF F7 C5 */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9D4C  48 00 01 F4 */	b lbl_802C9F40
/* 802C9D50  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 802C9D54  28 00 00 64 */	cmplwi r0, 0x64
/* 802C9D58  40 82 00 20 */	bne lbl_802C9D78
/* 802C9D5C  7F 63 DB 78 */	mr r3, r27
/* 802C9D60  38 80 00 1E */	li r4, 0x1e
/* 802C9D64  7F A5 EB 78 */	mr r5, r29
/* 802C9D68  7F C6 F3 78 */	mr r6, r30
/* 802C9D6C  7F E7 FB 78 */	mr r7, r31
/* 802C9D70  4B FF ED 21 */	bl initEtcSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9D74  48 00 01 CC */	b lbl_802C9F40
lbl_802C9D78:
/* 802C9D78  28 00 00 67 */	cmplwi r0, 0x67
/* 802C9D7C  40 82 00 20 */	bne lbl_802C9D9C
/* 802C9D80  7F 63 DB 78 */	mr r3, r27
/* 802C9D84  38 80 00 75 */	li r4, 0x75
/* 802C9D88  7F A5 EB 78 */	mr r5, r29
/* 802C9D8C  7F C6 F3 78 */	mr r6, r30
/* 802C9D90  7F E7 FB 78 */	mr r7, r31
/* 802C9D94  4B FF F7 79 */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9D98  48 00 01 A8 */	b lbl_802C9F40
lbl_802C9D9C:
/* 802C9D9C  28 00 00 68 */	cmplwi r0, 0x68
/* 802C9DA0  40 82 00 20 */	bne lbl_802C9DC0
/* 802C9DA4  7F 63 DB 78 */	mr r3, r27
/* 802C9DA8  38 80 00 74 */	li r4, 0x74
/* 802C9DAC  7F A5 EB 78 */	mr r5, r29
/* 802C9DB0  7F C6 F3 78 */	mr r6, r30
/* 802C9DB4  7F E7 FB 78 */	mr r7, r31
/* 802C9DB8  4B FF F7 55 */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9DBC  48 00 01 84 */	b lbl_802C9F40
lbl_802C9DC0:
/* 802C9DC0  28 00 00 6B */	cmplwi r0, 0x6b
/* 802C9DC4  40 82 01 7C */	bne lbl_802C9F40
/* 802C9DC8  7F 63 DB 78 */	mr r3, r27
/* 802C9DCC  38 80 00 09 */	li r4, 9
/* 802C9DD0  7F A5 EB 78 */	mr r5, r29
/* 802C9DD4  38 C0 00 A0 */	li r6, 0xa0
/* 802C9DD8  7F E7 FB 78 */	mr r7, r31
/* 802C9DDC  4B FF E9 55 */	bl initFallSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9DE0  48 00 01 60 */	b lbl_802C9F40
/* 802C9DE4  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 802C9DE8  28 00 00 64 */	cmplwi r0, 0x64
/* 802C9DEC  41 82 00 0C */	beq lbl_802C9DF8
/* 802C9DF0  28 00 00 65 */	cmplwi r0, 0x65
/* 802C9DF4  40 82 00 20 */	bne lbl_802C9E14
lbl_802C9DF8:
/* 802C9DF8  7F 63 DB 78 */	mr r3, r27
/* 802C9DFC  38 80 00 1E */	li r4, 0x1e
/* 802C9E00  7F A5 EB 78 */	mr r5, r29
/* 802C9E04  7F C6 F3 78 */	mr r6, r30
/* 802C9E08  7F E7 FB 78 */	mr r7, r31
/* 802C9E0C  4B FF EC 85 */	bl initEtcSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9E10  48 00 01 30 */	b lbl_802C9F40
lbl_802C9E14:
/* 802C9E14  28 00 00 67 */	cmplwi r0, 0x67
/* 802C9E18  40 82 00 20 */	bne lbl_802C9E38
/* 802C9E1C  7F 63 DB 78 */	mr r3, r27
/* 802C9E20  38 80 00 73 */	li r4, 0x73
/* 802C9E24  7F A5 EB 78 */	mr r5, r29
/* 802C9E28  7F C6 F3 78 */	mr r6, r30
/* 802C9E2C  7F E7 FB 78 */	mr r7, r31
/* 802C9E30  4B FF F6 DD */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9E34  48 00 01 0C */	b lbl_802C9F40
lbl_802C9E38:
/* 802C9E38  28 00 00 6B */	cmplwi r0, 0x6b
/* 802C9E3C  40 82 01 04 */	bne lbl_802C9F40
/* 802C9E40  7F 63 DB 78 */	mr r3, r27
/* 802C9E44  38 80 00 09 */	li r4, 9
/* 802C9E48  7F A5 EB 78 */	mr r5, r29
/* 802C9E4C  38 C0 00 82 */	li r6, 0x82
/* 802C9E50  7F E7 FB 78 */	mr r7, r31
/* 802C9E54  4B FF E8 DD */	bl initFallSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9E58  48 00 00 E8 */	b lbl_802C9F40
/* 802C9E5C  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 802C9E60  28 00 00 67 */	cmplwi r0, 0x67
/* 802C9E64  40 82 00 20 */	bne lbl_802C9E84
/* 802C9E68  7F 63 DB 78 */	mr r3, r27
/* 802C9E6C  38 80 00 73 */	li r4, 0x73
/* 802C9E70  7F A5 EB 78 */	mr r5, r29
/* 802C9E74  7F C6 F3 78 */	mr r6, r30
/* 802C9E78  7F E7 FB 78 */	mr r7, r31
/* 802C9E7C  4B FF F6 91 */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9E80  48 00 00 C0 */	b lbl_802C9F40
lbl_802C9E84:
/* 802C9E84  28 00 00 6B */	cmplwi r0, 0x6b
/* 802C9E88  40 82 00 B8 */	bne lbl_802C9F40
/* 802C9E8C  7F 63 DB 78 */	mr r3, r27
/* 802C9E90  38 80 00 6F */	li r4, 0x6f
/* 802C9E94  7F A5 EB 78 */	mr r5, r29
/* 802C9E98  38 C0 00 82 */	li r6, 0x82
/* 802C9E9C  7F E7 FB 78 */	mr r7, r31
/* 802C9EA0  4B FF F6 6D */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9EA4  48 00 00 9C */	b lbl_802C9F40
/* 802C9EA8  57 80 06 3E */	clrlwi r0, r28, 0x18
/* 802C9EAC  28 00 00 64 */	cmplwi r0, 0x64
/* 802C9EB0  41 82 00 0C */	beq lbl_802C9EBC
/* 802C9EB4  28 00 00 65 */	cmplwi r0, 0x65
/* 802C9EB8  40 82 00 20 */	bne lbl_802C9ED8
lbl_802C9EBC:
/* 802C9EBC  7F 63 DB 78 */	mr r3, r27
/* 802C9EC0  38 80 00 1E */	li r4, 0x1e
/* 802C9EC4  7F A5 EB 78 */	mr r5, r29
/* 802C9EC8  7F C6 F3 78 */	mr r6, r30
/* 802C9ECC  7F E7 FB 78 */	mr r7, r31
/* 802C9ED0  4B FF EB C1 */	bl initEtcSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9ED4  48 00 00 6C */	b lbl_802C9F40
lbl_802C9ED8:
/* 802C9ED8  28 00 00 67 */	cmplwi r0, 0x67
/* 802C9EDC  40 82 00 20 */	bne lbl_802C9EFC
/* 802C9EE0  7F 63 DB 78 */	mr r3, r27
/* 802C9EE4  38 80 00 75 */	li r4, 0x75
/* 802C9EE8  7F A5 EB 78 */	mr r5, r29
/* 802C9EEC  7F C6 F3 78 */	mr r6, r30
/* 802C9EF0  7F E7 FB 78 */	mr r7, r31
/* 802C9EF4  4B FF F6 19 */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9EF8  48 00 00 48 */	b lbl_802C9F40
lbl_802C9EFC:
/* 802C9EFC  28 00 00 68 */	cmplwi r0, 0x68
/* 802C9F00  40 82 00 20 */	bne lbl_802C9F20
/* 802C9F04  7F 63 DB 78 */	mr r3, r27
/* 802C9F08  38 80 00 74 */	li r4, 0x74
/* 802C9F0C  7F A5 EB 78 */	mr r5, r29
/* 802C9F10  7F C6 F3 78 */	mr r6, r30
/* 802C9F14  7F E7 FB 78 */	mr r7, r31
/* 802C9F18  4B FF F5 F5 */	bl initLv3WaterSe__10Z2EnvSeMgrFUcUcUcUc
/* 802C9F1C  48 00 00 24 */	b lbl_802C9F40
lbl_802C9F20:
/* 802C9F20  28 00 00 6B */	cmplwi r0, 0x6b
/* 802C9F24  40 82 00 1C */	bne lbl_802C9F40
/* 802C9F28  7F 63 DB 78 */	mr r3, r27
/* 802C9F2C  38 80 00 09 */	li r4, 9
/* 802C9F30  7F A5 EB 78 */	mr r5, r29
/* 802C9F34  38 C0 00 A0 */	li r6, 0xa0
/* 802C9F38  7F E7 FB 78 */	mr r7, r31
/* 802C9F3C  4B FF E7 F5 */	bl initFallSe__10Z2EnvSeMgrFUcUcUcUc
lbl_802C9F40:
/* 802C9F40  39 61 00 30 */	addi r11, r1, 0x30
/* 802C9F44  48 09 82 DD */	bl _restgpr_27
/* 802C9F48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 802C9F4C  7C 08 03 A6 */	mtlr r0
/* 802C9F50  38 21 00 30 */	addi r1, r1, 0x30
/* 802C9F54  4E 80 00 20 */	blr 
