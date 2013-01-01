require_relative 'av_audio_service_type'
require_relative 'av_chroma_location'
require_relative 'av_codec_id'
require_relative 'av_color_primaries'
require_relative 'av_color_range'
require_relative 'av_color_space'
require_relative 'av_color_transfer_characteristic'
require_relative 'av_discard'
require_relative 'av_field_order'
require_relative 'av_media_type'
require_relative 'av_pixel_format'
require_relative 'av_rational'
require_relative 'av_sample_format'


module RTP
  module FFmpeg
    class AVCodecContext < FFI::Struct
      layout  :av_class, :pointer,
              :log_level_offset, :int,    # new!
              :codec_type, AVMediaType,
              :codec, :pointer,
              :codec_name, [:char, 32],
              :codec_id, AVCodecID,
              :codec_tag, :uint,
              :stream_codec_tag, :uint,
              :priv_data, :pointer,
              :internal, :pointer,        # new!
              :opaque, :pointer,
              :bit_rate, :int,
              :bit_rate_tolerance, :int,
              :global_quality, :int,
              :compression_level, :int,
              :flags, :int,
              :flags2, :int,
              :extradata, :pointer,
              :extradata_size, :int,
              :time_base, AVRational,
              :ticks_per_frame, :int,
              :delay, :int,
              :width, :int,
              :height, :int,
              :coded_width, :int,
              :coded_height, :int,
              :gop_size, :int,
              :pix_fmt, AVPixelFormat,
              :me_method, :int,
              :draw_horiz_band, :pointer,
              :get_format, :pointer,
              :max_b_frames, :int,
              :b_quant_factor, :float,
              :rc_strategy, :int,
              :b_frame_strategy, :int,
              :b_quant_offset, :float,
              :has_b_frames, :int,
              :mpeg_quant, :int,
              :i_quant_factor, :float,
              :i_quant_offset, :float,
              :lumi_masking, :float,
              :temporal_cplx_masking, :float,
              :spatial_cplx_masking, :float,
              :p_masking, :float,
              :dark_masking, :float,
              :slice_count, :int,         # new!
              :prediction_method, :int,
              :slice_offset, :pointer,
              :sample_aspect_ratio, AVRational,
              :me_cmp, :int,
              :me_sub_cmp, :int,
              :mb_cmp, :int,              # new!
              :ildct_cmp, :int,
              :dia_size, :int,
              :last_predictor_count, :int,
              :pre_me, :int,
              :me_pre_cmp, :int,
              :pre_dia_size, :int,
              :me_subpel_quality, :int,
              :dtg_active_format, :int,
              :me_range, :int,
              :intra_quant_bias, :int,
              :inter_quant_bias, :int,
              :slice_flags, :int,
              :xvmc_acceleration, :int,
              :mb_decision, :int,
              :intra_matrix, :pointer,
              :inter_matrix, :pointer,
              :scenechange_threshold, :int,
              :noise_reduction, :int,
              :me_threshold, :int,
              :mb_threshold, :int,
              :intra_dc_precision, :int,
              :skip_top, :int,
              :skip_bottom, :int,
              :border_masking, :float,
              :mb_lmin, :int,
              :mb_lmax, :int,
              :me_penalty_compensation, :int,
              :bidir_refine, :int,
              :brd_scale, :int,
              :keyint_min, :int,
              :refs, :int,
              :chromaoffset, :int,
              :scenechange_factor, :int,
              :mv0_threshold, :int,
              :b_sensitivity, :int,
              :color_primaries, AVColorPrimaries,
              :color_trc, AVColorTransferCharacteristic,
              :colorspace, AVColorSpace,
              :color_range, AVColorRange,
              :chroma_sample_location, AVChromaLocation,
              :slices, :int,                        # new!
              :field_order, AVFieldOrder,           # new!
              :sample_rate, :int,
              :channels, :int,
              :sample_fmt, AVSampleFormat,
              :frame_size, :int,
              :frame_number, :int,
              :block_align, :int,
              :cutoff, :int,
              :channel_layout, :uint64,
              :request_channel_layout, :uint64,
              :audio_service_type, AVAudioServiceType,    # new!
              :request_sample_fmt, AVSampleFormat,        # new!
              #:get_buffer, :av_codec_context_get_buffer,
              :get_buffer, :pointer,
              :release_buffer, :pointer,
              :reget_buffer, :pointer,
              :qcompress, :float,
              :qblur, :float,
              :qmin, :int,
              :qmax, :int,
              :max_qdiff, :int,
              :rc_qsquish, :float,
              :rc_qmod_amp, :float,
              :rc_qmod_freq, :int,
              :rc_buffer_size, :int,
              :rc_override_count, :int,
              :rc_override, :pointer,
              :rc_eq, :pointer,
              :rc_max_rate, :int,
              :rc_min_rate, :int,
              :rc_buffer_aggressivity, :float,
              :rc_initial_cplx, :float,
              :rc_max_available_vbv_use, :float,
              :rc_min_vbv_overflow_use, :float,
              :rc_initial_buffer_occupancy, :int,
              :coder_type, :int,
              :context_model, :int,
              :lmin, :int,
              :lmax, :int,
              :frame_skip_threshold, :int,
              :frame_skip_factor, :int,
              :frame_skip_exp, :int,          # new!
              :frame_skip_cmp, :int,
              :trellis, :int,
              :min_prediction_order, :int,
              :max_prediction_order, :int,
              :timecode_frame_start, :int64,
              :rtp_callback, :pointer,
              :rtp_payload_size, :int,
              :mv_bits, :int,
              :header_bits, :int,
              :i_tex_bits, :int,
              :p_tex_bits, :int,
              :i_count, :int,
              :p_count, :int,
              :skip_count, :int,
              :misc_bits, :int,
              :frame_bits, :int,
              :stats_out, :pointer,
              :stats_in, :pointer,
              :workaround_bugs, :int,
              :strict_std_compliance, :int,
              :error_concealment, :int,
              :debug, :int,
              :debug_mv, :int,
              :err_recognition, :int,     # new! ...or used to be :error_recognition
              :reordered_opaque, :int64,
              :hwaccel, :pointer,
              :hwaccel_context, :pointer,
              :error, [:uint64, AV_NUM_DATA_POINTERS],
              :dct_algo, :int,
              :idct_algo, :int,
              :bits_per_coded_sample, :int,
              :bits_per_raw_sample, :int,
              :lowres, :int,
              :coded_frame, :pointer,
              :thread_count, :int,
              :thread_type, :int,         # new!
              :active_thread_type, :int,         # new!
              :thread_safe_callbacks, :int,      # new!
              :execute, :pointer,
              :execute2, :pointer,
              :thread_opaque, :pointer,
              :nsse_weight, :int,
              :profile, :int,
              :level, :int,
              :skip_loop_filter, AVDiscard,
              :skip_idct, AVDiscard,
              :skip_frame, AVDiscard,
              :subtitle_header, :pointer,     # new!
              :subtitle_header_size, :int,    # new!
              :error_rate, :int,
              :pkt, :pointer,                 # new!
              :vbv_delay, :uint64,            # new!
              :pkt_timebase, AVRational,      # new!
              :codec_descriptor, :pointer,    # new!
              :pts_correction_num_faulty_pts, :int64,    # new!
              :pts_correction_num_faulty_dts, :int64,    # new!
              :pts_correction_last_pts, :int64,         # new!
              :pts_correction_last_dts, :int64,         # new!
              :metadata, :pointer            # new!

=begin
              :sub_id, :int,
              :rate_emu, :int,
              :real_pict_num, :int,
              :hurry_up, :int,
              :luma_elim_threshold, :int,
              :chroma_elim_threshold, :int,
              :error_recognition, :int,
              :parse_only, :int,
              :splice_count, :int,
              :dsp_mask, :uint,
              :mb_qmin, :int,
              :mb_qmax, :int,
              :color_table_id, :int,
              :internal_buffer_count, :int,
              :internal_buffer, :pointer,
              :palctrl, :pointer,
              :inter_threshold, :int,
              :antialias_algo, :int,
              :quantizer_noise_shaping, :int,
              :crf, :float,
              :cqp, :int,
              :bframebias, :int,
              :complexityblur, :float,
              :deblockalpha, :int,
              :deblockbeta, :int,
              :partitions, :int,
              :directpred, :int,
              :use_lpc, :int,
              :lpc_coeff_precision, :int,
              :prediction_order_method, :int,
              :min_partition_order, :int,
              :max_partition_order, :int,
              :request_channel, :int,
              :drc_scale, :float,
              :weighted_p_pred, :int,
              :aq_mode, :int,
              :aq_strength, :float,
              :psy_rd, :float,
              :psy_trellis, :float,
              :rc_lookahead, :int
=end
      # LONGEST STRUCTURE EVER!!!!
    end
  end
end
