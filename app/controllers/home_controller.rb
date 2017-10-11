class HomeController < ApplicationController
  def index
      
       $station_info = params[:id]

        #지하철역이 1개일 때 (강변, 구의, 사가정, 수유, 삼성) => 화장실 역정보 페이지로 이동
        #line_image : 지하철 line_image를 저장하는 변수
          
        if (params[:id] == "구의" ||params[:id] == "강변" || params[:id] == "사가정" || params[:id] == "수유" || params[:id] == "삼성" )
          if ($station_info=="구의")
            $line_image="line2"
          else if ($station_info=="강변")
            $line_image="line2"
          else if ($station_info=="사가정")
            $line_image="line7"
          else if ($station_info=="수유")
            $line_image="line4"
          else if ($station_info=="삼성") 
            $line_image="line2"
          end
          end
          end
          end
          end
          
          render "/home/toilet_detail_info.html"
        
    
        # (삼성, 잠실, 교대, 동역사, 종합운동장)
        # 3개 이상 (강남, 고속터미널, 양재)
        # select_toilet_image = 선택한 역마다 뜨는 화장실 이미지의 이름을 저장하는 변수
        # station_ename : 역의 영어 이름을 저장
        else if(params[:id] == "잠실" || params[:id] == "교대" || params[:id] == "동대문역사문화" || params[:id] == "종합운동장")
          #$station_info = params[:id]
          if ($station_info=="잠실")
            @select_toilet_image="2_jamsil"
            $station_ename ="jamsil"
            $line_image="line28"
          else if($station_info=="교대")
            @select_toilet_image="2_gyodae"
            $station_ename ="gyodae"
            $line_image="line23"
          else if($station_info=="동대문역사문화")
            @select_toilet_image="2_ddm_history"
            $line_image="line245"
            $station_ename ="ddm_history"
          else if($station_info=="종합운동장")
            @select_toilet_image="2_jonghapground"
            $line_image="line29"
            $station_ename ="jonghapground"
          end
          end
          end
          end
          render "/home/select_toilet.html"
        
          
          # 3개 이상 (강남, 고속터미널, 양재)
        else if(params[:id] == "강남" ||params[:id] == "고속터미널" || params[:id] == "양재")
          #$station_info = params[:id] 
          if ($station_info=="강남")
            @select_toilet_image="2_gangnam"
            $line_image="line2sin"
          else if($station_info=="고속터미널")
            @select_toilet_image="3_gosokterminal"
            $line_image="line379"
          else if($station_info=="양재")
            @select_toilet_image="3_yangjae"
            $line_image="line3sin"
          end
          end
          end
          render "/home/select_toilet.html"
        end
        end
        end   
        
  end

  
  def upload
    file = params[:pic]
    
    uploader = RedmapUploader.new
    uploader.store!(file)
    
    render "home/index.html"
    
  end
end
